from fastapi import FastAPI, File, UploadFile, Request
import uvicorn
from fastapi.responses import HTMLResponse
from fastapi.templating import Jinja2Templates
from fastapi.staticfiles import StaticFiles
import numpy as np
from io import BytesIO
from PIL import Image
import tensorflow as tf
import matplotlib.pyplot as plt
import time
import re

app = FastAPI()
app.mount("/temp", StaticFiles(directory="temp"), name="temp")
app.mount("/static", StaticFiles(directory="static"), name="static")
templates = Jinja2Templates("templates/")

MODEL = tf.keras.models.load_model("../saved_models/1")
CLASS_NAMES = ["Early Blight", "Late Blight", "Healthy"]

@app.get("/")
def testing(request: Request):
    return templates.TemplateResponse("index.html", {"request": request})

@app.get("/ping")
async def ping():
    return "Hello, I am alive"

def read_file_as_image(data) -> np.ndarray:
    image = (Image.open(BytesIO(data)))
    image = np.array(image.resize((256,256)))
    # image2 = Image.open(BytesIO(data))
    return image  #,image2

# @app.post("/predict")
# async def predict(
#     file: UploadFile = File(...)
# ):
#     image = read_file_as_image(await file.read())
#     #plt.imshow(image)
#     #image2.show()
#     #resize_image = image2.resize((256,256))
#     #resize_image.show()
#     # plt.imshow(image)
#     #plt.show()
#     # image2 = image.copy()
#     # image2 = np.resize(image2, (256,256,3))
#     # plt.imshow(image2)
#     # plt.show()
#     img_batch = np.expand_dims(image, 0)

#     predictions = MODEL.predict(img_batch)

#     predicted_class = CLASS_NAMES[np.argmax(predictions[0])]
#     confidence = np.max(predictions[0])
#     return {
#         'class': predicted_class,
#         'confidence': float(confidence)
#     }

@app.post("/prediction", response_class=HTMLResponse())
async def handel_form(request: Request, file: UploadFile = File(...)):
    startTime = time.time()
    file_name = file.filename
    # print(file_name)
    content_type = file.content_type
    # print(content_type)
    size = file.spool_max_size
    # print(size)
    try:
        if re.search(r'image/*', content_type):
            image_b = await file.read()
            f = open("temp/preview.png", 'wb')
            f.write(image_b)
            image = read_file_as_image(image_b)
            img_batch = np.expand_dims(image, 0)

            predictions = MODEL.predict(img_batch)

            predicted_class = CLASS_NAMES[np.argmax(predictions[0])]
            confidence = np.max(predictions[0])
            executionTime = (time.time() - startTime)*1000
            executionTime = round(executionTime, 3)
            return templates.TemplateResponse(
                "results.html", 
                {
                    "request": request,  
                    "predicted_class": predicted_class, 
                    "confidence": confidence, 
                    "executionTime": executionTime 
                }
            ) 
        else:
            return templates.TemplateResponse("error.html", {"request": request})
    except Exception as e:
        return {
            "server error": "Retry"
        }


if __name__ == "__main__":
    uvicorn.run(app, host='localhost', port=8000)
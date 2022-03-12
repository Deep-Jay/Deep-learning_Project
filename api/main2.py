from fastapi import FastAPI, File, UploadFile
import uvicorn
import numpy as np
from io import BytesIO
from PIL import Image
import tensorflow as tf
import matplotlib.pyplot as plt

app = FastAPI()

MODEL = tf.keras.models.load_model("../saved_models/1")
CLASS_NAMES = ["Early Blight", "Late Blight", "Healthy"]

@app.get("/ping")
async def ping():
    return "Hello, I am alive"

def read_file_as_image(data) -> np.ndarray:
    image = (Image.open(BytesIO(data)))
    image = np.array(image.resize((256,256)))
    # image2 = Image.open(BytesIO(data))
    return image  #,image2

@app.post("/predict")
async def predict(
    file: UploadFile = File(...)
):
    image = read_file_as_image(await file.read())
    #plt.imshow(image)
    #image2.show()
    #resize_image = image2.resize((256,256))
    #resize_image.show()
    # plt.imshow(image)
    #plt.show()
    # image2 = image.copy()
    # image2 = np.resize(image2, (256,256,3))
    # plt.imshow(image2)
    # plt.show()
    img_batch = np.expand_dims(image, 0)

    predictions = MODEL.predict(img_batch)

    predicted_class = CLASS_NAMES[np.argmax(predictions[0])]
    confidence = np.max(predictions[0])
    return {
        'class': predicted_class,
        'confidence': float(confidence)
    }


if __name__ == "__main__":
    uvicorn.run(app, host='localhost', port=8000)
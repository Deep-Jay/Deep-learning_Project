# Deep-learning_Poject

Repository for SEM-4 project

### **About**

The goal of this project is to show an example case of how **Deep learning(Machine Learning + Data Science + AI)** can be used in agriculture domain to benefit farmers.

### **The Problem**

Farmers who grow pototoes are facing economic loses every year because of diseases that can happen to a potato plant. There are two common disesse that can happen to a potato plant known as **Early Blight** and **Late Blight**. Early Blight caused by fungus and Late Blight is caused by a specific microorganism. If these diseses can be detected early then farmers can apply appropriate treatment and can save lots of waste and prevent economic loses. The treatment for both cases are little different, so it is important that farmers accurately identify what kind of disease is there in that potato plant.

### **What we will do**

We will try to develop an **mobile app** which will allow farmers to just take picture of the potato plant leaf and the mobile application will tell whether the potato plant is healthy or have one of those diseases. We will build a website for the same case.

### **Steps we will follow**

Data Collection:

* Dataset was collected from [here](https://www.kaggle.com/arjuntejaswi/plant-village).

Data Cleaning and Processing:

* Converting images into numeric arrays with tensorflow dataset.
* Optimising performance with prefetch and cache with tensorflow dataset.
* Generating extra data with data augmentation(Resize, Recsale, Zoom etc.) to increase performance & accuracy of the model.

Model Building:

* Building a CNN(Convolutional Neural Network) with the help of Tensorflow library of python.
* Building several models by tuning the hyperparameters to find the best performing model.

Saving Model to disk:

* Saving the models to disk, which is to be used later.
* Comparing all saved models to find the best performing model.

Backend Server:

* Building server with the help of FastAPI, a python library.
* Connects the built model with an interface where we upload a file and get results predicted by the model.

Frontend Website:

* Build from HTML, CSS, Bootstrap and JavaScript.
* Provides an interface which user can easily understand and interact.

> For Mobile App

Model Optimisation:

* Reduce model size with the help of Tensorflow Lite for mobile app.

Deployment in Heroku:

* Optimised model is deployed in cloud server and waiting for images to predict results.

Mobile App:

* Developed in Fluter.
* Model is in-built in the app using Tensorflow Lite.

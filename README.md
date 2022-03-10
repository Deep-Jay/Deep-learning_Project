# Deep-learning_Poject

Repository for SEM-4 project

### **About**

The goal of this project is to show an example case of how Deep learning and AI can be used in agriculture domain to benefit farmers.

### **The Problem**

Farmers who grow pototoes are facing economic loses every year because of diseases that can happen to a potato plant. There are two common disesse that can happen to a potato plant known as **Early Blight** and **Late Blight**.Early Blight caused by fungus and Late Blight is caused by a specific microorganism. If these diseses can be detected early then farmers can apply appropriate treatment and can save lots of wste and prevent economic loses. The treatment for both cases are little different, so it is important that farmers accurately identify what kind of disease is there in that potato plant.

### **What we will do**

We will try to develop an **mobile app** which will allow farmers to just take picture of the potato plant leaf and the mobile application will tell whether the potato plant is healthy or have one those diseases. Also we will build a website for the same case

### Steps we will follow

Data Collection

* Dataset was collected from kaggle.com

Data Cleaning and Processing

* Converting images into numeric arrays with tensorflow dataset
* Optimising performance with prefetch and cache wuth tensorflow dataset
* Generating extra data with data augmentation(Resize, Recsale, Zoom etc.) to increase performance accuracy of the model

Model Building

* Building a CNN(Convolutional Neural Network) with the help of Tensorflow library of python.
* Building several models by tuning the hyperparameters to fing best performing model

Saving Model to disk

* Saving the models to disk, which is to used later
* Comparing all saved models to find the est performing model

Backend Server

* Building server with the help of FastAPI, a python library
* Connects the built model with an interface where we upload a file and get results predicted by the model

Frontend Website

* Build from from HTML, CSS, Bootstrap and JavaScript
* Provides an interface which user can understand and interact

> For Mobile App

Model Optimisation

* Reduce model size with the help of Tensorflow Lite for mobile app

Deployment in GCP(Google Cloud Platform)

* Optimised model is deployed in cloud server and waiting for images to predict results

Mobile App

* Developed in React Native
* Takes photo and sends to GCP where the model predicts and results are sent and show in the app

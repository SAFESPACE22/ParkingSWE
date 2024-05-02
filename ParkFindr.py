""" 
Use flask to create the backend of a web application that allows users to input the features 
of a parking garage floor and get a prediction of the number of vacant parking spots on the floor.
React will be used to create the frontend of the web application.
The web application will use the trained model to make predictions (crowdsourcing).
"""
from flask import Flask, request, jsonify
import os
import pickle

model_path = os.path.join('models', 'parkfindr_model')
with open(model_path, 'rb') as file:
    model = pickle.load(file)

server = Flask(__name__)

@server.route('/predict', methods=['POST'])
def predict():
    features = request.json['features']
    # may possibly need to post-process the features
    prediction = model.predict(features)
    # returns the prediction as a JSON object
    return jsonify({'prediction': prediction})

@server.route('/models', methods=['GET'])
def load_model():
    model_path = os.path.join('models', 'parkfindr_model')
    with open(model_path, 'rb') as file:
        model = pickle.load(file)
    return model

if __name__ == '__main__':
    server.run(debug=True)
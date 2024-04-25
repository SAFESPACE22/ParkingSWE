""" 
Use flask to create the backend of a web application that allows users to input the features 
of a parking garage floor and get a prediction of the number of vacant parking spots on the floor.
React will be used to create the frontend of the web application.
The web application will use the trained model to make predictions (crowdsourcing).
"""

import collections
from flask import Flask, request, redirect
from flask_restful import Resource, Api
from flask_cors import CORS
import os
import pickle
import pandas as pd
import json
from sklearn.preprocessing import StandardScaler
# import math round
from math import ceil

server = Flask(__name__)
cors = CORS(server, resources={r"*": {"origins": "*"}})
api = Api(server)



# def normalize_data(features):
#     scaler = StandardScaler()
#     normalized_features = scaler.fit_transform(features)
#     return normalized_features

def predict_vacancy(config):
    ##loading the model from the saved file
    pkl_filename = "models/ridge"
    try:
        with open(pkl_filename, 'rb') as f_in:
            model = pickle.load(f_in)

    except FileNotFoundError:
        return {"error": f"Model file {pkl_filename} not found"}
    except ModuleNotFoundError as e:
        return {"error": f"Module not found: {e.name}"}
    
    
    try:
        if isinstance(config, dict):
            # Check if values in config are iterable (list, tuple, etc.)
            # If not, wrap them in a list
            for key in config:
                if not isinstance(config[key], list) or isinstance(config[key], str):
                    config[key] =    [config[key]]
            df = pd.DataFrame(config)
        else:
            df = config
        print(df)
        # df = normalize_data(df)
        print(df)
        y_pred = model.predict(df)
        
        print(y_pred)
        return ceil(y_pred[0])
    except ValueError as e:
        return {"error": str(e)}
    
class Test(Resource):
    def get(self):
        return 'Welcome to, Test App API!'

    def post(self):
        try:
            value = request.get_json()
            if(value):
                return {'Post Values': value}, 201

            return {"error":"Invalid format."}

        except Exception as error:
            return {'error': error}

class GetPredictionOutput(Resource):
    def get(self):
        return {"error":"Invalid Method."}

    def post(self):
        try:
            data = request.get_json()
            predict = predict_vacancy(data)
            predict_output = predict
            return {'predict':predict_output}

        except Exception as error:
            return {'error': error}

api.add_resource(Test,'/')
api.add_resource(GetPredictionOutput,'/getPredictionOutput')

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 5000))
    server.run(host='10.204.146.9', port=port)

# in terminal run: python ParkFindr.py
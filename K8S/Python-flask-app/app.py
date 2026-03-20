from flask import Flask
import os


app = Flask(__name__)

@app.route("/")
def home():
    env=os.getenv("ENV","not set")
    password=os.getenv("PASSWORD","not set")
    return f"Environment: {env}, password: {password}"

app.run(host="0.0.0.0",port=5000)


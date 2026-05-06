from flask import Flask # Flask help us to create a web server

app = Flask(__name__) # create a app and it tells the Flask where ur app is running

@app.route('/') # first API, if someone hits http://host:port/
def home():
    return "Hello Everyone......."

@app.route('/health') # health check API
def health():
    return {"status":"UP"} # json format

if __name__ == '__main__': # run the application only if the file run directly
    app.run(host='0.0.0.0',port=5000)




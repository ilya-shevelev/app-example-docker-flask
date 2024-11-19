from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def hello():
    return f'{os.environ.get("TEST")}'

if __name__ == "__main__":
    port = 3478
    app.run(debug=True,host='0.0.0.0',port=port)

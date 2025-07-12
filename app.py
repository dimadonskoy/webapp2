from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p><H1>Kubernetes test app version 2</H1></p>"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8888)

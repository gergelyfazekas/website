from flask import Flask, render_template
import subprocess
import os

app = Flask(__name__)

app.static_folder = 'static'

@app.route('/')
def hello():
    return render_template('index.html')

if __name__ == '__main__':
    app.run()


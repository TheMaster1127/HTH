from flask import Flask, send_file, request, jsonify
import os

app = Flask(__name__)



@app.route('/')
def app_route():
    return send_file(os.path.join(os.path.dirname(__file__), 'index.html')), 200






@app.route('/sdf', methods=['POST'])
def sdf():
    request_data = request.get_json()
    print(f"Data from Hell: {request_data}")
    return "hello from Python"




@app.route('/sdfc', methods=['POST'])
def sdfc():
    request_data = request.get_json()
    print(f"Data from Hell: {request_data}")
    return "hello from Python"




@app.route('/sdffd', methods=['POST'])
def sdffd():
    request_data = request.get_json()
    print(f"Data from Hell: {request_data}")
    return "hello from Python"




@app.route('/var1', methods=['POST'])
def var1():
    request_data = request.get_json()
    print(f"Data from Hell: {request_data}")
    return "hello from Python"






@app.errorhandler(404)
def not_found(e):
    return "Page not found", 404

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000, debug=True)

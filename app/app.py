import datetime
import os
import sys
import json
import uuid
from flask import Flask
from flask import redirect
from flask import session
from flask import request
from flask import url_for
from flask import render_template
from jinja2 import Template
import jsonForm

# https://docs.sencha.com/extjs/6.0.0/classic/Ext.tree.Panel.html
# https://www.techferry.com/articles/ext-js/ext-js-ui-widgets.html

import requests as reqExt
import urllib.parse

app = Flask(__name__,
            template_folder='www/templates',
            static_folder='www/static'
            )
jsonForm.FORM_DIR = "Forms"
app.secret_key = str(uuid.uuid1()).replace("-", "")
app.config['CORS_HEADERS'] = 'Content-Type'
app.permanent_session_lifetime = datetime.timedelta(days=10)  # период хронений сессии составляет 10 дней


@app.before_request
def before_request():
    """
    Функция запускается перед запросом
    Добавляет соединение к БД
    """
    pass


@app.after_request
def after_request(response):
    # CORS in flask
    header = response.headers
    header[
        'Access-Control-Allow-Origin'] = '*'  # https://developer.mozilla.org/ru/docs/Web/HTTP/Headers/Access-Control-Allow-Origin
    header[
        'Access-Control-Allow-Headers'] = '*'  # https://developer.mozilla.org/ru/docs/Web/HTTP/Headers/Access-Control-Allow-Headers
    header[
        'Access-Control-Allow-Methods'] = '*'  # https://developer.mozilla.org/ru/docs/Web/HTTP/Headers/Access-Control-Allow-Methods
    header['Server'] = 'D3apiServer'
    header['Last-Modified'] = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    return response


@app.route('/')
def example():
    return redirect("/index.html")


def getParam(name, defoultValue=''):
    return request.args.get(name, default=defoultValue)


ROOT_DIR = os.path.join(os.path.dirname(__file__))

countQuery = 0


@app.route('/<path:path>', methods=['GET', 'POST'])
def all_files(path):
    # инициализируем сессионный словарь
    if session.get("ID") == None:
        global countQuery
        countQuery += 1
        session["ID"] = f'{str(uuid.uuid1()).replace("-", "")}{countQuery}{datetime.datetime.now().microsecond}'
        jsonForm.SESSION_DICT[session["ID"]] = {}

    if "dataset.php" in path:
        queryJson = jsonForm.getAttrQuery(request)
        txt =jsonForm.getDataSetQuery(request,queryJson,session["ID"])
        return txt, 200, {'content-type': "application/x-javascript"}

    if "action.php" in path:
        queryJson = jsonForm.getAttrQuery(request)
        txt = jsonForm.getActionQuery(request,queryJson,session["ID"])
        return txt, 200, {'content-type': "application/x-javascript"}

    # Поиск запроса в каталоге static
    pathHtmlFromForm = f"{app.static_folder.replace('/', os.sep)}{os.sep}{path}"
    if os.path.isfile(pathHtmlFromForm):
        bin, mime = jsonForm.sendCostumBin(pathHtmlFromForm)
        return bin, 200, {'content-type': mime}

    queryJson = jsonForm.getAttrQuery(request)
    format = 1
    if "type" in queryJson and queryJson['type'] == "js":
        format = 2
    # Поиск запроса в каталоге Forms и templates
    isExist, pathHtmlFromForm = jsonForm.existContentExtJs(path, format)
    if isExist:
        if 'data' in queryJson:
            queryJson = json.loads(queryJson['data'])
        bin, mime = jsonForm.getParsedForm(path, queryJson, jsonForm.SESSION_DICT[session["ID"]], format)
        return bin, 200, {'content-type': mime}

    # Поиск запроса в каталоге templates
    pathHtmlFromForm = f"{app.template_folder.replace('/', os.sep)}{os.sep}{path}"
    if os.path.isfile(pathHtmlFromForm):
        mime = jsonForm.mimeType(path)
        return render_template(path, data=jsonForm.getAttrQuery(request)), 200, {'content-type': mime}
    return "", 404
    # return render_template('404.html; charset=utf-8', **locals()), 404
    # return app.render_template(path)
    # return app.send_static_file(path)


def to_pretty_json(value):
    return json.dumps(value, sort_keys=True, indent=4, separators=(',', ': '))


if __name__ == '__main__':
    port = int(os.environ.get("PORT", 5000))
    if len(sys.argv) > 1:
        port = int(sys.argv[1])
    app.run(debug=False, host='0.0.0.0', port=port)

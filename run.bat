set MIS_DOCKER_NAME=python3.8_ExtJsForm
set MIS_DOCKER_IMAGE="python3.8_flask:ExtJsForm"
set MIS_DOCKER_HOSTNAME=PYTHON_3.8_EXTJSFORM
set MIS_ROOT="%~dp0app"
set MIS_PORT_WEB=9091

docker run --rm -d -p %MIS_PORT_WEB%:5000 --name %MIS_DOCKER_NAME% --hostname %MIS_DOCKER_HOSTNAME% -v %MIS_ROOT%:/app  %MIS_DOCKER_IMAGE%
timeout 10
start "" "http://127.0.0.1:%MIS_PORT_WEB%/" 


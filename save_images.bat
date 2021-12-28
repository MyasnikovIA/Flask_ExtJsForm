set MIS_DOCKER_NAME=python3.8_ExtJsForm
set MIS_DOCKER_IMAGE="python3.8_flask:ExtJsForm"
set MIS_DOCKER_HOSTNAME=PYTHON_3.8_EXTJSFORM
set MIS_ROOT_IMG=%~dp0
set datestr=%date%

docker save -o %MIS_ROOT_IMG%Flask_001(%datestr%).tar %MIS_DOCKER_IMAGE% 


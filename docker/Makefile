#Makefile
THIS_FILE := $(lastword $(MAKEFILE_LIST))
.PHONY: help build and push conatiners
USER_NAME=centhisone
help:
	make -pRrq  -f $(THIS_FILE) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'
build_comment:
	export USER_NAME=$(USER_NAME) && cd ../src/comment && bash docker_build.sh
build_ui:
	export USER_NAME=$(USER_NAME) && cd ../src/ui && bash docker_build.sh
build_post-py:
	export USER_NAME=$(USER_NAME) && cd ../src/post-py && bash docker_build.sh
build_prom:
	export USER_NAME=$(USER_NAME) && cd ../monitoring/prometheus && docker build -t $(USER_NAME)/prometheus .
build_blackbox:
	export USER_NAME=$(USER_NAME) && cd ../monitoring/blackbox && docker build -t $(USER_NAME)/blackbox .

build:
	export USER_NAME=$(USER_NAME)
	cd ../src/comment && bash docker_build.sh
	cd ../src/ui && bash docker_build.sh
	cd ../src/post-py && bash docker_build.sh
	cd ../monitoring/prometheus && docker build -t $(USER_NAME)/prometheus .
	cd ../monitoring/blackbox && docker build -t $(USER_NAME)/blackbox .
push:
	docker login
	docker push $(USER_NAME)/ui
	docker push $(USER_NAME)/post
	docker push $(USER_NAME)/comment
	docker push $(USER_NAME)/prometheus

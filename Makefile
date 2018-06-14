build:
	 docker build --build-arg IMCONFLY_VERSION=`cat VERSION` -t ierokhin/imconfly:`cat VERSION` .

push:
	docker push ierokhin/imconfly:`cat VERSION`
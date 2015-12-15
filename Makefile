imgname=moander/mod_proxy

build:
	docker build -t ${imgname} .
	docker tag -f ${imgname} jau

run: build
	docker run -it -p "1080:1080" ${imgname}

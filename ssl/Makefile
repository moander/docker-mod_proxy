imgname=moander/mod_proxy:ssl

build:
	docker build -t ${imgname} .

run: build
	docker run -it -p "8123:80" -p "4123:443" ${imgname}

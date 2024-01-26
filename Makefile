build:
	mvn clean package
	cp target/capp/mi-data-mapper_1.0.0.car mi-home/carbonapps
	podman-compose up


clean:
	mvn clean install
		
test:
	curl -v http://localhost:8080/health

d:
	podman-compose down


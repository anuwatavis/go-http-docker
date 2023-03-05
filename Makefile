build:
	docker build -t go-anwuataravis-image:latest -f Dockerfile .

container:
	docker run -p 8080:8080 go-anwuataravis-image:latest  
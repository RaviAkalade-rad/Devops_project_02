FROM python:3.11-alpine
LABEL maintainer="ravi.radical2024@gmail.com"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 4005
ENTRYPOINT ["python"]
CMD ["src/app.py"]
# CMD and ENTRYPOINT are two Dockerfile instructions that together define the command that runs when your container starts
# The CMD instruction sets the default command for the container.
# If used without an ENTRYPOINT,it becomes the default command and arguments that will be used when the container starts. 
# Whereas, when used with an ENTRYPOINT , it provides default arguments for the entry point.

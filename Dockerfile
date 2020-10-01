FROM ubuntu:14.04
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
ADD webapp.7z home
RUN apt install p7zip-full
RUN 7z x home/webapp.7z
RUN cp home/app /opt/webapp
RUN pip install -qr Flask Jinja2 Werkzeug distribute wsgiref
EXPOSE 5000
CMD ["python", "/opt/webapp/app.py"]
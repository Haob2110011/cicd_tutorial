FROM ubuntu:latest
MAINTAINER Nhat Hao "haob2110011@student.ctu.edu.vn"
RUN apt update -y && apt install -y python3-pip python3-dev build-essential python3-venv
ADD . /flask_app
WORKDIR /flask_app
RUN python3 -m venv haovenv
RUN /flask_app/haovenv/bin/pip install -r requirements.txt
ENTRYPOINT ["/flask_app/haovenv/bin/python"]
CMD ["flask_docker.py"]

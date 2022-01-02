# syntax=docker/dockerfile:1
FROM jupyter/spicy-notebook
WORKDIR /home/jovyan/repo
RUN sudo apt update && sudo apt -y upgrade && sudo apt -y install git
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 8888

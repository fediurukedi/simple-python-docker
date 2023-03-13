ARG IMAGE_NAME
FROM ${IMAGE_NAME}

ARG REQUIREMENTS_PATH

ADD ${REQUIREMENTS_PATH} /tmp
RUN apt update
RUN apt install -y vim && apt -y clean
RUN pip install -U pip
RUN pip install -r /tmp/requirements.txt


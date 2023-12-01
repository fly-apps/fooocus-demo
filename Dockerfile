FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && \
    apt-get install -y python3 python3-pip

RUN pip3 install --upgrade pip

COPY ./Fooocus/requirements_versions.txt /app/requirements_versions.txt
RUN pip3 install -r requirements_versions.txt

COPY ./Fooocus /app/

CMD [ "python3", "entry_with_update.py", "--listen" ]

FROM python:3-buster

WORKDIR /usr/src/app

COPY ./miner/requirements.txt ./
RUN pip install --no-cache-dir -r -requirements.txt

COPY ./miner .
CMD [ "python", "./main.py" ]

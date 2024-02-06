FROM python:3.8-slim-buster

WORKDIR . .

RUN apt update && apt upgrade -y
RUN apt install git -y

COPY requirements.txt .

RUN pip3 install -U pip && pip3 install -U -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
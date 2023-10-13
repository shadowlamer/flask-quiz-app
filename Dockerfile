FROM python:3.10-alpine

WORKDIR /app

COPY requirements.txt /app
RUN pip3 install -r requirements.txt
COPY . /app

ENV FLASK_APP=main.py

ENTRYPOINT ["flask"]
CMD ["run", "--host=0.0.0.0"]


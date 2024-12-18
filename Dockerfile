FROM python:3.12.7-alpine3.20

WORKDIR /usr/src/app


COPY ./server/ ./

RUN pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir -r requirements.txt

CMD ["python", "./server.py"]
FROM python:alpine

RUN pip install flask
COPY . .

CMD ["python", "app.py"]
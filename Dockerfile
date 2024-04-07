FROM python:slim

RUN pip install flask
COPY . .

CMD ["python", "app.py"]
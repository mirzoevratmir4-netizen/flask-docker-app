FROM docker.m.daocloud.io/library/python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt -i https://pypi-mirror.gitverse.ru/simple/
COPY . .
EXPOSE 5000
CMD ["python", "app.py"]
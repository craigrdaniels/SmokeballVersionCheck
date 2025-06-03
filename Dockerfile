FROM python:3.12 AS base

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r ./requirements.txt

COPY . .

CMD ["python3", "main.py"]



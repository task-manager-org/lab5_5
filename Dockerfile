FROM python:3.11

COPY requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /app
COPY src .

ENV PYTHONPATH=/app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080", "--log-level", "info"]

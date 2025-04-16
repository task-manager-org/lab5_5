FROM python:3.11

COPY requirements.txt .
RUN pip install -r requirements.txt

WORKDIR src/
COPY src .

ENTRYPOINT [ "python", "src/main.py" ]  

FROM registry.redhat.io/ubi8/python-311

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

EXPOSE 1234

CMD ["python", "app.py"]

FROM python:3.7

COPY . /app/

WORKDIR '/app/'

RUN pip3 install --no-cache-dir -r /app/requirements.txt

ENTRYPOINT ["python3", "/app/distributed_nmt_with_attention.py"]
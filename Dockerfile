FROM python:3.12
ARG TEST
ENV TEST=$TEST
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD gunicorn main:app --workers 3 --worker-class uvicorn.workers.UvicornWorker --bind= 0.0.0.0:8000 --access-logfile -
EXPOSE 3478

FROM python:3.12
ARG TEST
ENV TEST=$TEST
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
EXPOSE 3478

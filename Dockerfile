FROM python:3.12
WORKDIR /app
COPY ["requirements.txt", "app.py", "app1.py", "/app/"]
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
EXPOSE 3478

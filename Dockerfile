FROM python:3.12.

# ARG APP_CONFIG__DB__URL
# ARG APP_CONFIG__PROXY__HTTP
# ARG APP_CONFIG__PROXY__HTTPS
# ARG APP_CONFIG__DB__ECHO

# ENV APP_CONFIG__DB__URL=$APP_CONFIG__DB__URL
# ENV APP_CONFIG__PROXY__HTTP=$APP_CONFIG__PROXY__HTTP
# ENV APP_CONFIG__PROXY__HTTPS=$APP_CONFIG__PROXY__HTTPS
# ENV APP_CONFIG__DB__ECHO=$APP_CONFIG__DB__ECHO

RUN echo $APP_CONFIG__DB__URL

WORKDIR /backend
COPY . .
CMD gunicorn app:app --workers 3 --worker-class uvicorn.workers.UvicornWorker --bind= 0.0.0.0:8000 --access-logfile -
EXPOSE 8000
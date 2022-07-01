FROM python:3.8-alpine3.13
ENV APP_HOME=/code/app
RUN apk update && apk add --upgrade apk-tools
RUN apk add --no-cache \
    build-base \
    cargo \
    git \
    g++ \
    openssl-dev \
    python3-dev 
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
COPY ./src/ /code/app
RUN pip install -r /code/app/requirements.txt
EXPOSE 8000
ENTRYPOINT ["uvicorn", "main:app", "--host=0.0.0.0" "--reload"]

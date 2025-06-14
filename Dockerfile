﻿FROM python:3.8-alpine
WORKDIR /opt
COPY . /opt/jwt_tool
WORKDIR /opt/jwt_tool
RUN apk add gcc musl-dev
RUN python3 -m pip install -r requirements.txt
RUN rm jwt_tool.py && cp jwt_tool/jwt_tool.py .
ENTRYPOINT ["python3","jwt_tool.py"]
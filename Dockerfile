FROM python:3.9
COPY ./requirements.txt /web/requirements.txt
WORKDIR /web
RUN pip install -r requirements.txt
COPY web/* /web
ENTRYPOINT [ "uvicorn" ]

CMD [ "--host", "0.0.0.0", "main:app" ]
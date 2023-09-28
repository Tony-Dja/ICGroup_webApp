FROM python:3.6-alpine
LABEL maintainer="Tony-Dja"

COPY . /opt/

WORKDIR /opt

RUN pip install flask==1.1.2

ENV ODOO_URL=
ENV PGADMIN_URL=

EXPOSE 8080

CMD [ "python", "./app.py" ]
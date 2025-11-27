FROM python:3.12

RUN mkdir /app

WORKDIR /app

RUN apt update
RUN apt upgrade -y
RUN apt-get install libjpeg-dev zlib1g-dev default-libmysqlclient-dev pkg-config -y

RUN pip install --upgrade pip

COPY requirements.txt /app/

RUN pip install -r requirements.txt

RUN pip install mysqlclient

COPY . /app/

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
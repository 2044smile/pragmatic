FROM python:3.7.10

WORKDIR /home/

RUN git clone https://github.com/2044smile/pragmatic.git

WORKDIR /home/pragmatic/

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=django-insecure-q_@ob%76shhhe5h-$2n@(!g(=i&smef5y4_t=2c_f2im5vgi*(" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
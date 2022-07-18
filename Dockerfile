FROM python:3.9

WORKDIR /new_app

COPY . /new_app

RUN pip install -r /new_app/requirements.txt
RUN python3 /new_app/manage.py migrate

CMD ["python3", "/new_app/manage.py", "runserver", "0.0.0.0:8000"]
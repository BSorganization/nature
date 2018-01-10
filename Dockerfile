FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 80

RUN python manage.py migrate
CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]

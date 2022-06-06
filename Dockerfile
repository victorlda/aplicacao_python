FROM python:3

WORKDIR /app

RUN pip install --upgrade pip

COPY requirements.txt ./
RUN pip install --user -r requirements.txt

COPY . .

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

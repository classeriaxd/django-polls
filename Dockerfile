# syntax=docker/dockerfile:1
FROM python:3

ENV PYTHONUNBUFFERED=1

ENV PYTHONDONTWRITEBYTECODE=1

WORKDIR /app

COPY . /app

RUN pip3 install -r /app/requirements.txt

ENV PORT=8000

EXPOSE 8000

CMD ["python", "manage.py", "migrate"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]
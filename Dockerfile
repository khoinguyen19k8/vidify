FROM python:3.9-slim

RUN apt update
RUN apt install -y ffmpeg
RUN pip install pipenv

WORKDIR /app
COPY Pipfile Pipfile.lock ./

RUN pipenv install --system --deploy
COPY . . 
CMD ["python", "src/app.py"]

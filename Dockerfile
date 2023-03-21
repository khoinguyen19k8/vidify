FROM python:3.9-slim

RUN apt update
RUN apt install -y ffmpeg
RUN apt install -y libffi-dev

WORKDIR /app
COPY requirements.txt ./

RUN pip install -r requirements.txt
COPY . . 
CMD ["python", "src/app.py"]

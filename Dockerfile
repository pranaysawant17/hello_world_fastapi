FROM python:latest
COPY . /usr/app/
EXPOSE 8000
RUN pip install --upgrade pip
WORKDIR /usr/app/

RUN pip install -r requirements.txt
CMD uvicorn app:app --reload
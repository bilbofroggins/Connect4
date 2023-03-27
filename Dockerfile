FROM python:latest

WORKDIR /

COPY poetry.lock poetry.lock
RUN pip3 install poetry
RUN poetry install

COPY . .

CMD [ "python3", "-m" , "http.server", "80"]
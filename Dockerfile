FROM python:latest
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN pip3 install poetry
RUN poetry install
CMD ["poetry", "run", "python3", "app.py"]
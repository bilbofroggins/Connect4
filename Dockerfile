FROM python:latest
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN pip3 install poetry
RUN poetry install
ENTRYPOINT ["poetry", "run"]
CMD ["python", "run.py"]
FROM python:3

RUN apt-get update && apt-get install -y build-essential
RUN pip install poetry
RUN poetry config virtualenvs.create false

ADD . /app
WORKDIR /app

RUN poetry install --no-dev
CMD ["python", "-m", "uvicorn", "lunni_example_python:app", "--host", "0.0.0.0", "--port", "80"]

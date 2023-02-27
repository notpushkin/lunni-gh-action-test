FROM python:3

RUN apt-get update && apt-get install -y build-essential

ADD . /app
WORKDIR /app

RUN pip install .
CMD ["python", "-m", "uvicorn", "lunni_example_python:app", "--host", "0.0.0.0", "--port", "80"]

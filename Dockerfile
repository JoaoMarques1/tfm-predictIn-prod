FROM python:3.8.12-buster

COPY TaxiFareModel /TaxiFareModel
COPY requirements.txt /requirements.txt
COPY model.joblib /model.joblib
COPY api /api

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD uvicorn api.fast:app --host 0.0.0.0

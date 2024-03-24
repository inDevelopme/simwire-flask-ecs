FROM tiangolo/meinheld-gunicorn-flask:python3.9

COPY ./application.py /app/application.py
COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir -r /app/requirements.txt

CMD ["gunicorn", "-b", "0.0.0.0:5000", "application:app"]

FROM python:3.13.3-slim


COPY . /app
WORKDIR /app

RUN python3 -m venv /opt/venv

RUN pip install --upgrade pip
RUN /opt/venv/bin/pip install -r requirements.txt
RUN chmod +x /app/entrypoint.sh

CMD ["/app/entrypoint.sh"]




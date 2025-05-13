FROM python:3.13.3-slim


COPY . /app
WORKDIR /app

RUN python3 -m venv /opt/venv

RUN /opt/venv/bin/pip install pip --upgrade && \
    /opt/venv/bin/pip install -r requirements.txt && \
    chmod +x entrypoint.sh && \
    chmod +x migrate.sh

CMD ["/app/entrypoint.sh"]



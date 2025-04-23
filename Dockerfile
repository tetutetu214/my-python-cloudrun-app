FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV PORT 8080
ENV FUNCTION_TARGET hello_http

CMD functions-framework --target=${FUNCTION_TARGET} --port=${PORT}

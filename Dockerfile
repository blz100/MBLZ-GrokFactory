FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Secrets passed via build-args or runtime env from Key Vault
ARG XAI_API_KEY
ENV XAI_API_KEY=${XAI_API_KEY}

EXPOSE 8000
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
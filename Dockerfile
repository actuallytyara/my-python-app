FROM python:3.11-slim

# Install git
RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean

# Set direktori kerja
WORKDIR /app

# Copy file project ke container
COPY . .

# Install dependency Python
RUN pip install --no-cache-dir -r requirements.txt

# Jalankan aplikasi
CMD ["python", "app.py"]

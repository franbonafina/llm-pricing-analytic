# Use a lightweight Python image
FROM python:3.9-slim
LABEL authors="franbonafina"

# Set working directory
WORKDIR /app

# Copy requirements.txt
COPY requirements.txt .

# Install dependencies from requirements.txt
RUN pip install -r requirements.txt

# Copy your application code
COPY . .

# Set the command to run the application (assuming main.py is your entry point)
CMD ["uvicorn", "main:app", "--reload"]

# Expose port (optional, adjust based on your application)
EXPOSE 8000

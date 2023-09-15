# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the dependencies
RUN pip install --no-cache-dir Flask

# Set the exposed port as an environment variable
ENV PORT 5000

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
# ENV FLASK_APP=app.py

# Run app.py when the container launches
CMD ["flask", "--app", "app.py", "run", "--host=0.0.0.0"]


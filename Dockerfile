# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the workdir

WORKDIR  /usr/src/app/

RUN mkdir softeng2

WORKDIR /usr/src/app/softeng2
# Copy the requirements
COPY . . 

# Install the required packages (pip)
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Python script


# Define the command to run the script
RUN ["python","ascii_image_converter.py","--file=test2.jpg"]    
CMD ["more","out.txt"]

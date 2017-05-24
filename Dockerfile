# Use an official Python runtime as a base image
FROM mkenney/npm

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN ./install.sh

# Make port 80 available to the world outside this container
EXPOSE 443

# Define environment variable
# ENV NAME World

# Run app.py when the container launches
CMD ["http-server", "-S -p 443"]


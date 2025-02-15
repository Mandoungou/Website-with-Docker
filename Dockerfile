# Use the official Python 3 image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the HTML file and the CSS file (you need to create style.css alongside your Dockerfile)
COPY index.html ./
COPY style.css ./

# Expose port 8000 for the web server
EXPOSE 8000

# Command to start the simple HTTP server to serve the HTML and CSS files
CMD ["python", "-m", "http.server", "8000"]

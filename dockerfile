# Use a lightweight Linux base image
FROM ubuntu:latest AS build

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    xz-utils \
    zip \
    libglu1-mesa

# Clone Flutter repository
RUN git clone https://github.com/flutter/flutter.git /flutter

# Set Flutter path
ENV PATH="/flutter/bin:/flutter/bin/cache/dart-sdk/bin:$PATH"

# Enable Flutter web support
RUN flutter config --enable-web

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN flutter pub get

# Build the Flutter web app
RUN flutter build web

# Use nginx to serve the app
FROM nginx:alpine
COPY --from=build /app/build/web /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
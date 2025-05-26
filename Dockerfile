# Use the official nginx image as base
FROM nginx:alpine

# Remove the default nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file into the nginx html directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

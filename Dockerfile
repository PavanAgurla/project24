# Use a small and fast Nginx image
FROM nginx:alpine

# Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy our index.html to nginx web root
COPY index.html /usr/share/nginx/html/

# Expose port 80 (nginx default)
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]


FROM alpine:latest
RUN apk update && \
apk add --no-cache nginx
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]

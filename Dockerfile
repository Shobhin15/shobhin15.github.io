# Serve the portfolio as a static site with NGINX running as a non-root user
FROM nginxinc/nginx-unprivileged:1.27-alpine
COPY site/ /usr/share/nginx/html/
EXPOSE 8080
HEALTHCHECK --interval=30s --timeout=3s CMD wget -qO- http://localhost:8080/ >/dev/null || exit 1

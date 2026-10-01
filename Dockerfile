# Serve the portfolio as a static site with NGINX
FROM nginx:1.27-alpine
COPY site/ /usr/share/nginx/html/
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=3s CMD wget -qO- http://localhost/ >/dev/null || exit 1

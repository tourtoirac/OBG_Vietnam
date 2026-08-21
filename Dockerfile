FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY resources/ /usr/share/nginx/html/resources/

COPY pyscript.toml /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html/
COPY main.py /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
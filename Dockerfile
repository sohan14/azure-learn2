FROM nginx
COPY index.html /usr/share/nginx/html

WORKDIR /usr/share/nginx/html/

# Replace environment variables in the template file
CMD /bin/bash -c "envsubst < index.html.template > index.html && exec nginx -g 'daemon off;'"


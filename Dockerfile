FROM alpine
RUN echo "Hello from the databaseme!"

WORKDIR /app
COPY . .

CMD [ "tail", "-f", "/dev/null" ]
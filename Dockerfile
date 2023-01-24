FROM alpine
RUN echo "Hello from the databaseme!"

CMD [ "tail", "-f", "/dev/null" ]
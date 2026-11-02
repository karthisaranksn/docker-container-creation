FROM ubuntu
WORKDIR /app
RUN apt-get update && apt-get install -y docker.io
RUN touch test.txt
CMD ["/bin/bash"]
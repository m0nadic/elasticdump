FROM node

RUN apt-get update && apt-get install -y curl wget jq vim git w3m make httpie

RUN npm install elasticdump -g

WORKDIR /
ADD restore /usr/local/bin/restore

CMD ["bash"]


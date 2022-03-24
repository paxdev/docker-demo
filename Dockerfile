FROM 	node:6.9.0

RUN 	npm install -g @angular/cli@1.0.0

WORKDIR /app

COPY    package.json .
RUN     npm install

COPY	. .

RUN     npm build 

CMD		["npm", "run", "start", "--", "--host", "0.0.0.0"]

FROM node:10.11.0

ENV NPM_CONFIG_LOGLEVEL warn
COPY . .

RUN npm install react-scripts
RUN npm run build --production
RUN npm install -g serve

CMD serve -s build

EXPOSE 5000
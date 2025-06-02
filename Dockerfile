FROM node:18-alpine
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

WORKDIR /app

COPY package.json .

RUN pnpm install

RUN pnpm i -g serve

COPY . .

RUN pnpm run build

EXPOSE 3000

CMD [ "serve", "-s", "dist" ]

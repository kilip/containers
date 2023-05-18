# Build Caddy with the Mercure and Vulcain modules
FROM caddy:2-builder-alpine

RUN xcaddy build \
	--with github.com/dunglas/mercure/caddy \
	--with github.com/dunglas/vulcain/caddy

ARG VERSION

# Build Caddy with the Mercure and Vulcain modules
FROM caddy:${VERSION}

RUN xcaddy build \
	--with github.com/dunglas/mercure/caddy \
	--with github.com/dunglas/vulcain/caddy

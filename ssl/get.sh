#!/bin/sh
certbot \
	--config-dir . --work-dir . --logs-dir . \
	-d *.datacentric.group -d datacentric.group \
	certonly \
	--preferred-challenges dns-01 \
	--manual \
	--server https://acme-v02.api.letsencrypt.org/directory \
	-m owner@datacentric.group \
	--agree-tos \
	--manual-public-ip-logging-ok

This is a combo setup, where we put nginx (Nginx Proxy Manager), Varnish and Wordpress on the same server.

Our intention is so that, when the public try to access Wordpress, Nginx will proxy the request to Varnish and Varnish will cache the response.


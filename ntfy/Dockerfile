FROM binwiederhier/ntfy:latest
COPY server.yml /etc/ntfy/server.yml
CMD ["ntfy", "-c", "/etc/ntfy/server.yml", "serve"]
FROM jellyfin/jellyfin:latest

# Create data and config directories
RUN mkdir -p /config /cache /media

# Expose Jellyfin's default port
EXPOSE 8096

# Set environment variables for config paths
ENV JELLYFIN_DATA_DIR=/config
ENV JELLYFIN_CACHE_DIR=/cache

# Start Jellyfin targeting standard web ports
CMD ["jellyfin", "--datadir", "/config", "--cachedir", "/cache", "--webdir", "/usr/share/jellyfin/web"]

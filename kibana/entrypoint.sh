#!/bin/bash

# sed -i '$ d' /usr/share/kibana/config/kibana.yml
# echo "server.port: ${PORT}" >> /usr/share/kibana/config/kibana.yml
export SERVER_PORT=${PORT:5601}
# kibana serve -p 5623
# /bin/tini -- /usr/local/bin/kibana-docker
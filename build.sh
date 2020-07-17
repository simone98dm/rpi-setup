#/bin/bash
sed 's/changeme/'$1'/g' template.yml > docker-compose.yml
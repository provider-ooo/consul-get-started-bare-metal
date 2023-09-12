#!/usr/bin/env bash

source ./scripts/lib/lib.sh

compose="docker compose"

if [[ $(command -v docker-compose) != "" ]]; then
  >&2 echo -e "-> ${RED}docker-compose v1 detected, please use 'docker compose' commande insted of 'docker-compose'${NC}"
  # compose="docker-compose" # disabled you can use docker compose by default now
fi

if [[ " $@ " == *" --build "* ]]; then
  echo ${COMPOSE_PROFILES//$'\n'/' '}
  ${compose} -f docker-compose.yml build ${COMPOSE_PROFILES//$'\n'/' '} --no-cache
  exit 0
fi

if [[ $# == 0 ]]; then
  services=$(${compose} config --services)
  echo ""
  echo -e "-> ${L_BLUE}Config script tooling${NC}"
  echo ""
  echo "$0 --build"
  echo ""
  echo "$0 <service_name> <options>"
  echo ""
  echo "services:"
  for service in ${services//$'\n'/' '}; do
    echo -e "${ORANGE}$0 $service -h${NC}"
  done
  echo ""
  exit 1
fi

${compose} run --rm $@

exit 0
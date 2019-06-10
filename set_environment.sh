#!/bin/bash
#set -x
set -e

ENV=$1

# Rewrite hardcoded URLs in code to target environment. Script takes one single argument which defines the target env.


##########################################################################################
##########################################################################################
##########################################################################################
# IMPORTANT don't run this on MACOS (find/sed commands don't work same as on linux) !!!
##########################################################################################
##########################################################################################
##########################################################################################

uri_to_staging() {
    echo "Adjusting URIs to $ENV environment"

    # IMPORTANT adjust URLs for each environment and make sure to add new ones !!!

    # ./assets
    # https://{s}.tiles.openaip.net/data/openaip/{z}/{x}/{y}.pbf
    find dist/maps/styles -type f -exec sed -i -e 's/tiles\.openaip\.net/staging\.tiles\.openaip\.net/g' {} \;
    find dist/maps/styles -type f -exec sed -i -e 's/static\.openaip\.net/staging\.static\.openaip\.net/g' {} \;

    echo "Adjusting URIs to $ENV environment done"
};

uri_to_default() {
    echo "$ENV environment does not require adjusting URIs"
};

case $ENV in
    staging)
        uri_to_staging
        ;;
    development|production)
        uri_to_default
        break
        ;;
    *)
        echo "Unknown environment $ENV"
        ;;
esac

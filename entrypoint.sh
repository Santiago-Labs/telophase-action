#/bin/sh

set -e

apply=""
if [ $INPUT_APPLY = true ]; then
    apply="--appply"
fi

account_tag="--account-tag=$INPUT_ACCOUNT_TAG"

org_file=""
if [ $INPUT_ORGANIZATION_PATH ]; then
    org_file="--org=$INPUT_ORGANIZATION_PATH"
fi

stacks=""
if [ $INPUT_STACKS ]; then
    stacks="--stacks=-\"$INPUT_STACKS\""
fi

telophasecli deploy $apply $account_tag $org_file $stacks

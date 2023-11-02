#/bin/sh

set -e

# go install github.com/santiago-labs/telophasecli@latest
apply=""
if [ $INPUT_APPLY = true ]; then
    apply="--appply"
fi

cdk_path=""
if [ $INPUT_CDK_PATH ]; then
    cdk_path="--cdk-path=$INPUT_CDK_PATH"
fi

account_tag="--account-tag=$INPUT_ACCOUNT_TAG"

org_file=""
if [ $INPUT_ORGANIZATION_PATH ]; then
    org_file="--org=$INPUT_ORGANIZATION_PATH"
fi

stacks="--all-stacks"
if [ $INPUT_STACKS ]; then
    stacks="--stacks=-\"$INPUT_STACKS\""
fi

./telophase deploy $apply $cdk_path $account_tag $org_file $stacks

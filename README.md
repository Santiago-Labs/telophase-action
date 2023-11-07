# Telophase CLI Github Action 
This action allows for you to manage your AWS accounts and organization with telophase.


## Example Usage
In a GH Action file, for example, `.github/workflows/main.yaml`:

```
on: [push]

jobs:
  telophase_manage:
    runs-on: ubuntu-latest
    name: Manage AWS accounts and organization with telophase 
    steps:
    - name: Configure AWS credentials
      uses: aws-actions/configure-aws-credentials@v1
      with:
        # Use the credentials for the Management Account
        aws-access-key-id: ${{ secrets.AWS_ACCESS_KEY_ID }}
        aws-secret-access-key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}

    - name: Plan
      uses: telophase-actions/telophase@v0.1
      with:
        apply: false

    - name: Provision cluster
      uses: telophase-actions/telophase@v0.1
      with:
        # Setting apply to true means that the GitHub action will modify your infrastructure.
        apply: true
```

 Inputs
- `apply`: If the infrastructure change should be applied
- `cdk_path`: If the infrastructure change should be applied
- `account_tag`: Tag associated with the accounts to deploy
- `organization_path`: Path to your organization.yml file
- `stacks`: Stacks to deploy if not set will deploy all stacks

# Env
- `AWS_ACCESS_KEY_ID` Required
- `AWS_SECRET_ACCESS_KEY` Required

## License
This project is licensed under the Apache-2.0 License.

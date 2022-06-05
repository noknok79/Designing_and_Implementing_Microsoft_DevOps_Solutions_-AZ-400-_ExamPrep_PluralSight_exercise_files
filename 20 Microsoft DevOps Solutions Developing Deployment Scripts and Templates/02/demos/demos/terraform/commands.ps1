
az ad sp create-for-rbac -n "ARMDeployments" --role contributor --scopes /subscriptions/1427e7fb-a488-4ec5-be44-30ac10ca2e95/resourceGroups/Pluralsight-MSDevOpsSolutionsScirptsCourse

## authenticate to the Azure CLI with the SP above and explain terraform uses this cred
az account list --query [].tenantId
az login --service-principal --username AppID --password PASSWORD --tenant TENANT_ID

## explains you need the service principal name, subscription and tenant id to log in with the SP

terraform init
terraform plan
terraform apply
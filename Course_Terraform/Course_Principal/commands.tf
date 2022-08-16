/*
Abordaremos um pouco sobre os principais comandos do Terraform CLI:
top 5 comandos mais utilizados:

terraform init –          Prepare you working Directory for Other commands
terraform validate –      Check Weather the configuration is valid
terraform plan –          Show change required by the current configuration
terraform apply –         Create and Update Infrastructure
terraform destroy –       Destroy previously-created infrastructure 

all others commands:

terraform console -       Try terraform expressions at an interactive command prompt
terraform fmt -           Reformat your configuration in the standard style
terraform force-unlock -  Realese a stuck lock on the current workspace
terraform graph -         Generate a graphviz graph of the steps in an operation
terraform import -        Associate existing infrastructure with a terraform resource
terraform login -         Obtain and save credentials for this configuration
terraform logout -        Remove locally-stored credentials for a remote host
terraform output -        Show output values from your root module
terraform providers -     Show the providers required for this configuration
terraform refresh -       Update the state to match remote system
terraform show -          Show the current state or a saved plan
terraform state -         Advanced state management
terraform taint -         Mark a resource instance as not fully functional
terraform untaint -       Remove the 'taint' state from a resource instance
terraform test -          Experimental support for module integration testing
terraform version -       show the current Terraform Version
terraform workspace -     Workspace management

Opções que podemos usar com o terraform init --help

tais como:
backend=false
backend-config=path
force-copy
from-module=SOURCE
get=false
lock=false
lock-timeout=0s
no-color
plugin-dir
reconfigure
migrate-state
upgrade
lockfile=MODE
ignore-remote-version
*/

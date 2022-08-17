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


opções que podemos usar com terraform plan --help´

tais como:

destroy -        Select and "destroy" planning mode, witch create a plan to destroy all objects current managed this terraform configuration instead of the visual behavior

refresh-only -   Select the "refresh-only" planning mode, witch checks weather remoto objects still match the outcome of the most recent Terraform apply but does not propose any actions to undo any changes made outside of Terraform

refresh=false -  skip checking for external changes to remote objects while creating the plan, this can potentially make planning faster, but at the expense of possibly planing against a stale record of the remote system state.

replace=resource - Force replacement of a particular resource instance using its resource adress. If the plan world´ve normally produced an update or no-op action for this instance, Terraform  will plan to replace it instead

target=resource - Limit the planning operation to only the given module, resource, or resource instance and all of its dependencies. You can use this option multiple time to includes more than one object.

var-"foo=bar" -    set a value for one of the input variable in the root module of the configuration. Uses this options more than once to set more than one variable

var-file=filename  Load variable values from the given file, in addition to the default files terraform.tfvars and .autotfvars. Use  this option more than once to include more than once variable files.
Observações:   Teremos mais opções dentro de terraform plan --help other options commands!!
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Terraform Apply --Help

Esses são os comandos do terraform apply:

auto-approve  -     Skip interactive approval of plan before applying.
backup=path   -     Path to backup the existing state file before modifying. defaults to the "state-out" path with .backup extension. set to "-" to disable backup
compact-warnings    If terraform produces any warnings that are not accompanied by errors, show them in a more compact form that includes only the summary messages
lock=false -        Don´t hold a state lock during the operation. This is dangerous if outhers might conccurently run commands against the same workspace
lock-timeout=0 -    Duration to retry a state lock
input=true -        ask for input for variable if not directly set
no-color -          If specifield, output won´n contain any color
parallelism=n -     limit the number of parallel resource operations. default to 10 (or ten)
state-path -        Path to read and save state (unless state-out us specifield).Defaults to terraform.tfstate
state-path-out      Path to write state to that is different than "-state". This can be used to preserve the old state.


Terraform Destroy --Help

Esses são os comandos do terraform destroy:

Não temos comandos adicionais para destruir com o terraform destroy

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Terraform fmt --help

Esses são so comandos do terraform fmt:

list=false          Don´t list file whose formatting differs (always disabled if using STDIN)
write-false         Don´t write to source files (always disabled if using STDIN or -check)
diff                Display diffs of formatting changes
check               check if the input is formatted. exit status will be 0 if all input is properly formatted and non-zero otherwise
no-color            If specifield, output won´t contain any color.
recursive           Also process files in subdirectories. By default, only the given directory (or current directory) is processed.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



*/



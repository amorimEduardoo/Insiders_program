#variables
data=$(date +'%Y-%m-%dT%H:%M:%S')

#path
path='/home/ubuntu/Downloads/Insiders_program'
path_to_envs='/home/ubuntu/.pyenv/shims/papermill'
$path_to_envs/papermill $path/src/models/c10.0_deploy.ipynb $path/reports/c10.0_deploy_$data.ipynb

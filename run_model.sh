#variables
data=$(date +'%Y-%m-%dT%H:%M:%S')

#path
path='/home/ed/Downloads/Insider_Clustering'
path_to_envs='/home/ed/anaconda3/bin'
$path_to_envs/papermill $path/src/models/c10.0_deploy.ipynb $path/reports/c10.0_deploy_$data.ipynb

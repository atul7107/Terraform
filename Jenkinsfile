pipeline {
 agent any
 
 stages {
 stage(‘checkout’) {
 steps {
 git branch: ‘feature-terraform’, url: ‘github.com/atul7107/Terraform.git’
 
   }
 }
 
  stage(‘Provision infrastructure’) {
 
 steps {
 dir(‘dev’)
 {
 sh ‘terraform init’
 sh ‘terraform plan -out=plan’
 // sh ‘terraform destroy -auto-approve’
 sh ‘terraform apply plan’
 }
 
 
 }
 }
 
 
 
 }
}

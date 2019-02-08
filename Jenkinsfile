pipeline {
 agent any
 
 stages {
 stage('Checkout') {
 steps {
 git branch : 'feature-terraform', url: 'https://github.com/atul7107/Terraform.git'
 }
 }
stage('Path') {
 steps {
 script {
 def tfHome = tool name: 'Terraform'
 env.PATH = "${tfHome}:${env.PATH}"
 }
 sh 'terraform — version' 
 } 
 }
 stage('Provision infrastructure') {
 
 steps {
 dir('dev')
 {
 sh 'terraform init'
 sh 'terraform plan -out=plan'
 // sh ‘terraform destroy -auto-approve’
 sh 'terraform apply plan' 
 }
}
 }
}

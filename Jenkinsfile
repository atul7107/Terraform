pipeline {
agent any
      
stages {
stage(‘Checkout’) {
steps {
git branch: ‘feature-terraform’, url: ‘github.com/atul7107/Terraform.git’
             
 }
 }
 } 
}

stage('Provision infrastructure') {
             
            steps {
                sh 'terraform init'
                sh 'terraform plan -out=plan'
                sh 'terraform apply plan'
              
             
            }
        }

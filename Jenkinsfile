pipeline {
 agent any
 
 stages {
 stage('Checkout') {
 steps {
 git branch : 'feature-terraform', url: 'github.com/atul7107/Terraform.git'
 }
 }
 }
}
stage("Path") {
 steps {
 script {
 def tfHome = tool name: 'Terraform'
 env.PATH = "${tfHome}:${env.PATH}"
 }
 } 
 }

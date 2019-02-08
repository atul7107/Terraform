pipeline {
agent any
stages {
stage(‘Checkout’) {
steps {
checkout([$class: 'GitSCM', branches: [[name: 'feature-terraform']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'GIT_HUB_ACCESS_TOKEN', url: 'https://github.com/atul7107/Terraform.git']]])
 
              }
          }
     } 
}
 stage('Set Terraform path') {
            steps {
                script {
                    def tfHome = tool name: 'Terraform'
                    env.PATH = "${tfHome}:${env.PATH}"
                }
                sh 'terraform --version'
     }
}

pipeline {
 agent any
 
 stages {
 stage(‘checkout’) {
 steps {
 checkout([$class: 'GitSCM', branches: [[name: 'feature-terraform']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'GIT_HUB_ACCESS_TOKEN', url: 'https://github.com/atul7107/Terraform.git']]])
 }
 }
 }
}
stage("Path") {
 steps {
 script {}
 def tfHome = tool name: 'Terraform'
 env.PATH = "${tfHome}:${env.PATH}"
 }
 } 
 }
 

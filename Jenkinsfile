pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout 'scm'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}

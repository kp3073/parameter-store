pipeline {
    agent {label 'workstation'}

    stages {
        stage('Terraform Apply') {
            steps {
                sh 'make'
            }
        }
    }
}
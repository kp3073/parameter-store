pipeline {
    agent {label 'workstation'}

    options {
    ansicolor {'xterm'}
    }

    stages {
        stage('Terraform Apply') {
            steps {
                sh 'make'
            }
        }
    }
}
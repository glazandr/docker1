pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                echo '==================================jr================================='
                sh 'docker build . '
                sh 'docker kill $(docker ps -q)'
                echo '===================================khkkllk==========================='
            }
        }
    }
}

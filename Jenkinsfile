pipeline {
    agent any
    stages {
        stage('Example') {
            steps {
               sh 'docker ps -a
                   docker build -t jumisa:1.1 .
                   docker run jumisa:1.1  '
            }
        }
    }
}

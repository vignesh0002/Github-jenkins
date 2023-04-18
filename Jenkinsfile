pipeline {
    agent any
    stages {
        stage('Example') {
            steps {
               sh 'docker ps -a'
               sh 'docker build -t jumisa:1.1 .'
               sh 'docker run -p 9000:8080 -td jumisa:1.1'
            }
        }
    }
}

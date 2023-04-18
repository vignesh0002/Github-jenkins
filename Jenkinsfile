pipeline {
    agent any
    stages {
        stage('Example') {
            steps {
               sh 'docker ps -a'
               sh 'docker build -t jumisa:1.1 .'
               sh 'docker run -p 8080:9000 -td jumisa:1.1'
            }
        }
    }
}

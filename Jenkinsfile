pipeline
{
  agent any
  stages
  {
    stage('Build')
    {
      steps
      {
         // checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'GitHubP', url: 'https://github.com/nithyaksaamy/nginx_jenkins.git']])
          sh 'docker build -t vignesh0002/repo-1:jumisa1.1 .'
      }
    }
    stage('Docker Push') {
    	agent any
      steps {
      	withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
        	sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          sh 'docker push vignesh0002/repo-1:jumisa1.1'
        }
      }
    }
    stage('Docker deploy') {
    	agent any
      steps {
          withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
        	sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          sh 'docker image rm -f vignesh0002/repo-1:jumisa1.1'
          sh 'docker pull vignesh0002/repo-1:jumisa1.1'
          sh 'docker run -d -p 9200:80 vignesh0002/repo-1:jumisa1.1'
        }
      }
    }
  }
}

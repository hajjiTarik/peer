pipeline {
  agent {
    docker { image 'node:18.16.0-alpine' }
  }
  stages {
    stage('Build') {
      steps {
        nodejs(nodeJSInstallationName: 'Node 18.x') {
            sh 'npm install'
        }
      }
    }

    stage("Build Image") {
        steps {
            sh "docker build -t app-image ./"
        }
    }

    stage("start") {
        steps {
            sh "docker run -p 3000:3000 app-image"
        }
    }
  }
}
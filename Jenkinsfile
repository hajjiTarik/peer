pipeline {
  agent any
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
            sh "docker image rm -f \$(docker image ls --format '{{.Repository}}:{{.Tag}}' | grep ^app-image) || true"
            sh "docker image prune -f"
            sh "docker volume prune -f"
            sh "docker network create --driver bridge app-image_net || true"
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
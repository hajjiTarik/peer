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
  }
}
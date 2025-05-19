pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/Pvrolok/CtaCorriente.git'
      }
    }
    stage('Build') {
      steps {
        sh 'mvn clean package'
      }
    }
    stage('Test') {
      steps {
        sh 'mvn test'
        junit 'target/surefire-reports/*.xml'
      }
    }
  }
}

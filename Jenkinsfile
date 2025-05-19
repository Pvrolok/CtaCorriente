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
        bat 'mvn clean package'
      }
    }
    stage('Test') {
      steps {
        bat 'mvn test'
        junit 'target/surefire-reports/*.xml'
      }
    }
  }
}

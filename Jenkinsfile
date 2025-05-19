pipeline {
  agent any

  environment {
    ARTIFACTORY_URL = 'http://localhost:8082/artifactory/cta-corriente-release/'
    ARTIFACTORY_REPO = 'cta-corriente-release'
    ARTIFACTORY_CRED_ID = 'cred-artifactory'
  }

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

    stage('Deploy Artifact') {
      steps {
        rtServer(
          id: 'artifactory-server',
          url: "${ARTIFACTORY_URL}",
          credentialsId: "${ARTIFACTORY_CRED_ID}"
        )
        rtUpload(
          serverId: 'artifactory-server',
          spec: """{
            "files": [
              {
                "pattern": "target/*.war",
                "target": "${ARTIFACTORY_REPO}/"
              }
            ]
          }"""
        )
      }
    }
  }
}

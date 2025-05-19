pipeline {
  agent any

  environment {
    ARTIFACTORY_URL = 'https://tu-servidor.jfrog.io/artifactory'
    ARTIFACTORY_REPO = 'cta-corriente-release'
    ARTIFACTORY_CRED_ID = 'cred-artifactory'
  }

  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/usuario/CtaCorriente.git'
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

pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '''
                    sudo ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                    sudo ./jenkins/build/build.sh 
                   '''
            }
        }
        stage('Test') {
            steps {
                   sh'./jenkins/test/mvn.sh mvn test'
            }
        }
        stage('Push') {
            steps {
                  sh './jenkins/push/push.sh'
            }
        }
        stage('deploy') {
            steps {
                   sh'./jenkins/deploy/deploy.sh'
            }
        }
    }
}

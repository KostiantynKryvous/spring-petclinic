pipeline {
    agent any

    stages {
        stage('Build image') {
            steps {
                sh 'docker ps -a'
                echo 'Build image...'
                sh 'docker build . -t petclinic:v002'
                echo 'Push image...'
                sh 'docker push gcr.io/fp-epam/fp-petclinic:v002'
            }
        }
    }
}

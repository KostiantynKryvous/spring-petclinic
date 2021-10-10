pipeline {
    agent any

    stages {
        stage('Build image') {
            steps {
                echo 'Build image...'
                sh 'sudo docker build . -t petclinic:v002'
                echo 'Push image...'
                sh 'sudo docker push gcr.io/fp-epam/fp-petclinic:v002'
            }
        }
    }
}

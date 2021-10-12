pipeline {
    agent any

    stages {
        stage('Build image') {
            steps {
                sh 'gcloud auth activate-service-account acc-for-fp-epam@fp-epam.iam.gserviceaccount.com --key-file="/opt/fp-epam-bfdf0a8eea4b.json"'
                sh 'gcloud auth configure-docker'
                echo 'Build image...'
                sh 'docker build . -t gcr.io/fp-epam/fp-petclinic:v002'
                echo 'Push image...'
                sh 'docker push gcr.io/fp-epam/fp-petclinic:v002'
                sh 'gcloud container clusters get-credentials gke-autopilot --region europe-central2 --project fp-epam'
                // sh 'docker ps -a'
            }
        }
    }
}

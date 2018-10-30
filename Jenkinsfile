echo 'cypress pipeline'

node {

   stage('Clone Project From GITHUB') {
   checkout scm
   }
   stage('Set Jenkins as SUDO') {
    sh "sudo su -s /bin/bash jenkins"
   }
   stage('Build docker image for Cypress') {
    sh "sudo docker build -t robotdocker:latest ."
   }
   stage('Execute tests with mount') {
    sh "sudo docker run -p 4444:4444 --rm -v \$(pwd)/tests:/tmp/tests -v \$(pwd)/output:/output robotdocker:latest"\
   }

}
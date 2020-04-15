pipeline {
     agent any
     stages {
         stage('Start') {
             steps {
                 sh 'echo "Hello World"'
                 sh '''
                     echo "Multiline shell steps works too"
                     ls -lah
                 '''
             }
         }
         stage('Environment setup') {
             steps {
                 sh ' make all'       
             }
         }
         stage('Build Docker') {
             steps {
                 sh 'sudo docker build --tag=fahadosaimi/demolocal .'
                 sh 'sudo docker image ls'
                //  sh 'sudo docker run fahadosaimi/demolocal'       
             }
         }   
         stage('Upload image to Docker Hub') {
             steps {
                 sh 'dockerpath=""'
                 sh 'echo "Docker ID and Image: $dockerpath"'
                 sh 'docker login --username fahadosaimi'
                 sh 'd45d6276-ded2-4a36-aa89-bb4b82f27c4e'
                 sh 'sudo docker push fahadosaimi/demolocal'       
             }
         }         


        //  stage('Lint HTML') {
        //       steps {
        //           sh 'tidy -q -e index.html' 
        //       }
        //  }
        //  stage('Security Scan') {
        //       steps { 
        //          aquaMicroscanner imageName: 'alpine:latest', notCompliesCmd: 'exit 1', onDisallowed: 'fail', outputFormat: 'html'
        //       }
        //  }         
        //  stage('Upload to AWS') {
        //       steps { 
        //           withAWS(region:'eu-west-1',credentials:'jenkins') {
        //           sh 'echo "Uploading content with AWS creds"' 
        //               s3Upload(pathStyleAccessEnabled: true, payloadSigningEnabled: true, file:'index.html', bucket:'my-static-jenkins-pipeline-devops')
        //           }
        //       }
        //  }
     }
     
}

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
        //  stage('Environment setup and lint tests') {
        //      steps {
        //          sh ' make all'       
        //      }
        //  }
         stage('Run Docker') {
             steps {
                 sh 'docker build --tag=fahadosaimi/demolocal .'
                 sh 'docker image ls'
                 sh 'docker run -p 8000:80  -it fahadosaimi/demolocal bash'       
             }
         }   
         stage('Upload image to Docker Hub') {
             steps {
                 sh 'dockerpath=""'
                 sh 'echo "Docker ID and Image: $dockerpath"'
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

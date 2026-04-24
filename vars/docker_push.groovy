def call(string imagename,string imagetag,string DockerHubname){
  withCredentials([usernamePassword('credentialsId':"DockerHubCred",passwordVariable:"DockerHubPass",usernameVariable:"DockerHubname")]){
  sh "docker login -u ${dockerusername} -p ${DockerHubPass}"
}
  sh "docker push ${dockerusername}/${imagename}:${imagetag}"
}
    
    
 withCredentials([usernamePassword('credentialsId':"DockerHubCred",
                passwordVariable:"DockerHubPass",
                usernameVariable:"DockerHubname")]){
                sh "docker login -u ${env.DockerHubname} -p ${env.DockerHubPass}"
                sh "docker image tag django-app:latest ${env.DockerHubname}/django-app:latest"
                sh "docker push ${env.DockerHubname}/django-app:latest" */

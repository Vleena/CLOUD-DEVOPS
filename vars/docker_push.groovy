def call(String imagename,String imagetag,String DockerHubname){
  withCredentials([usernamePassword('credentialsId':"DockerHubCred",passwordVariable:"DockerHubPass",usernameVariable:"DockerHubname")]){
  sh "docker login -u ${dockerusername} -p ${DockerHubPass}"
}
  sh "docker push ${dockerusername}/${imagename}:${imagetag}"
}

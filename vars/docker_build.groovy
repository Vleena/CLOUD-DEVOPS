def call(String imagename, String imagetag, String dockerusername)
{
  sh "docker build -t ${dockerusername}/${dockerusername}:${imagetag} ."
}

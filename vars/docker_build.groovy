def call(string imagename, string imagetag, string dockerusername)
{
  sh "docker build -t ${dockerusername}/${dockerusername}:${imagetag} ."
}

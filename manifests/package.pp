class dockeree::package (

)

{



  notify { "hello": }
  exec { 'install_DockerMsftProvider':
    provider => powershell,
    command => 'Install-Module DockerMsftProvider -Force',
    unless => 'Get-PackageProvider DockerMsftProvider',
  }

  # exec { 'install_Docker':
  #  provider => powershell,
  #  command => 'Install-Package Docker -ProviderName DockerMsftProvider -Force -RequiredVersion'
  #  uness => 'Get-Package'}
  # }


}
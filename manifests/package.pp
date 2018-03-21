class dockeree::package (

)

{

  exec { 'install_DockerMsftProvider':
    provider => powershell,
    command => 'Install-Module DockerMsftProvider -Force',
    unless => 'Get-InstalledModule -Name DockerMsftProvider',
  }

  exec { 'install_Docker':
   provider => powershell,
   command => 'Install-Package Docker -ProviderName DockerMsftProvider -Force -RequiredVersion',
   unless => 'Get-Package Docker',
  }


}
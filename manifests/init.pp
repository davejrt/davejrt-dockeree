class dockeree (

  $modulename = $dockeree::params::modulename,
  $package    = $dockeree::params::package,



)  inherits dockeree::params {

  class {'::dockeree::package':}

}
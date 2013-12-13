class yum_updates::params {
  $enable = hiera('yum_updates::params::enable', ['sl-security'])
  $exclude = hiera('yum_updates::params::exclude', [])
  
}

# Class: yum_updates
#
# This module manages yum_updates
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class yum_updates inherits yum_updates::params {

file { '/etc/cron.daily/yum_update':
      path => '/etc/cron.daily/yum_update',
      ensure => present,
      content => template("yum_updates/yum_update.rb"),

      owner => 'root',
      group => 'root',
      mode => '0755',
  }

}


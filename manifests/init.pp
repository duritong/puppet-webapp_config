# modules/webapp-config/manifests/init.pp - manage webapp-config stuff
# Copyright (C) 2007 admin@immerda.ch
#

class webapp-config {
   package { 'webapp-config':
        ensure => present,
        category => $operatingsystem ? {
            gentoo => 'app-admin',
            default => '',
        }
   }
}

# modules/webapp-config/manifests/init.pp - manage webapp-config stuff
# Copyright (C) 2007 admin@immerda.ch
#

# modules_dir { "webapp-config": }

class webapp-config {
   package { 'webapp-config':
        ensure => present,
        category => $operatingsystem ? {
            gentoo => 'app-admin',
            default => '',
        }
   }


}

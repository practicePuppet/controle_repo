node default {
  file {'/root/README':
    ensure => file,
    content => 'This is a README',
    owner => 'root',
  }
}
node 'localhost.localdomain' {
  include role::master_server
}

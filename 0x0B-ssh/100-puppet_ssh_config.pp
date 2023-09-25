# set up a client SSH configuration

include stdlib

file_line { 'Configure identityfile':
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/school'
  ensure => present,
}

file_line { 'Configure password authentication to no':
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
  ensure => present,
}
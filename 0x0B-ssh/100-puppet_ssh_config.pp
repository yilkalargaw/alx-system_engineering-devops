# set up a client SSH configuration

include stdlib

file_line { 'Configure SSH':
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/school'
  replace => true,
  ensure => present,
}

file_line { 'Configure SSH':
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
  replace => true,
  ensure => present,
}
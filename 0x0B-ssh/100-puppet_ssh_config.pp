# set up a client SSH configuration

file_line { 'Configure SSH':
  path    => '/etc/ssh/ssh_config',
  lines   => [
    'IdentityFile ~/.ssh/school',
    'PasswordAuthentication no',
  ],
  replace => true,
  ensure => present,
}
# nginx puppet

package { 'nginx':
  ensure => present,
  name   => 'nginx',
}


file { 'index.html':
    ensure => present,
    path    => '/var/www/html/index.html',
    content => 'Hello World!',
    }

file_line { 'redirect_me':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

file_line { 'addHeader':
  ensure  => present,
  path    => '/etc/nginx/sites-available/default',
  after   => 'listen 80 default_server;',
  line    => 'add_header X-Served-By $hostname;',
}

service { 'nginx':
  ensure     => running,
  hasrestart => true,
  require    => Package['nginx'],
  subscribe  => File_line['redirect_me'],
}

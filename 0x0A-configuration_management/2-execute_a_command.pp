# kill a process named 'killmenow' using puppet
exec { 'killmenow':
  command  => 'pkill killmenow',
  provider => 'shell',
}

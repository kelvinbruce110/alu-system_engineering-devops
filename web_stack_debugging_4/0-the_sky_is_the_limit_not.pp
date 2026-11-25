# Increase the file descriptor limit for Nginx and restart it.

exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/bin:/usr/bin',
} ->

exec { 'nginx-restart':
  command => '/etc/init.d/nginx restart',
  path    => '/bin:/usr/bin',
}

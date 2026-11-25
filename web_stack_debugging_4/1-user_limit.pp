# Increase the file descriptor limits for the holberton user.

exec { 'increase-hard-file-limit-for-holberton-user':
  command => 'sed -i "/holberton hard/s/5/4096/" /etc/security/limits.conf',
  path    => '/bin:/usr/bin',
}

exec { 'increase-soft-file-limit-for-holberton-user':
  command => 'sed -i "/holberton soft/s/4/4096/" /etc/security/limits.conf',
  path    => '/bin:/usr/bin',
}

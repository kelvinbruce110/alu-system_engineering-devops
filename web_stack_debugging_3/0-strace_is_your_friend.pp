# Fix the phpp extension typo in the WordPress settings file.

exec { 'fix-wordpress':
  command => 'sed -i "s/phpp/php/g" /var/www/html/wp-settings.php',
  path    => '/bin:/usr/bin',
}

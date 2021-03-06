# This manifest automates web server / web stack debugging
# By finding and replacing erroneously named Wordpress filename in WP settings

exec { 'Modify a line of /var/www/html/wp-settings':
  path    => ['/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'],
  command => "sed -i 's/phpp/php/g' /var/www/html/wp-settings.php; sudo service apache2 restart"
}

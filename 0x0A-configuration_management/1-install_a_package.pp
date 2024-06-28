# Ensure pip3 is installed
package { 'python3-pip':
  ensure => installed,
}

# Ensure Flask 2.1.0 is installed using pip3
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'],
}

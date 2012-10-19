class statsd::config {
  $port = $statsd::port
  $ghost = $statsd::graphite_host
  $gport = $statsd::graphite_port

  file {'/etc/statsd':
    ensure => 'directory',
  }

  file{'/etc/statsd/config.js':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('statsd/config.js.erb'),
  }
}

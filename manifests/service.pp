class statsd::service {
  file{'/etc/init/statsd.conf':
    ensure => 'file',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/statsd/statsd.init',
  }

  service{'statsd':
    ensure   => 'running',
    provider => 'base',
    start    => '/sbin/start statsd',
    stop     => '/sbin/stop statsd',
    status   => '/sbin/status statsd',
  }
}

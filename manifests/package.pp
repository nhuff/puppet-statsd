class statsd::package{
  package{'statsd':
    ensure   => 'latest',
    provider => 'npm',
  }
}

class statsd (
  $port='8125',
  $flush_interval='60000',
  $graphite_host='',
  $graphite_port='2003'
) {
  anchor{'statsd::begin':}
  anchor{'statsd::end':}

  include statsd::package
  include statsd::service
  include statsd::config

  Anchor['statsd::begin'] ->
  Class['statsd::package'] ->
  Class['statsd::config'] ~>
  Class['statsd::service'] ->
  Anchor['statsd::end']
}

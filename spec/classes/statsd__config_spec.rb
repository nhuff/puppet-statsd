require 'spec_helper'

describe 'statsd::config' do
  let(:pre_condition){'include statsd'}
  context 'RedHat' do
    let(:facts) {{
      :osfamily        => 'RedHat',
      :operatingsystem => 'RedHat'
    }}
    it {
      should contain_file('/etc/statsd/config.js').
        with_content(/graphitePort: 2003/).
        with_content(/graphiteHost: /).
        with_content(/port: 8125/)
    }
  end
end

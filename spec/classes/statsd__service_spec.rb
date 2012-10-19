require 'spec_helper'

describe 'statsd::service' do
  context 'RedHat' do
    let(:facts) {{
      :osfamily        => 'RedHat',
      :operatingsystem => 'RedHat'
    }}
    it {
      should contain_service('statsd').with_provider('base')
      should contain_file('/etc/init/statsd.conf')
    }
  end
end

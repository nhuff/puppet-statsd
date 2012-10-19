require 'spec_helper'

describe 'statsd::package' do
  let(:pre_condition){'include nodejs'}
  context 'RedHat' do
    let(:facts) {{
      :osfamily        => 'RedHat',
      :operatingsystem => 'RedHat'
    }}
    it {
      should contain_package('statsd').with_provider('npm')
    }
  end
end

require 'spec_helper'

describe 'statsd' do
  context 'RedHat' do
    let(:facts){{
      :osfamily        => 'RedHat',
      :operatingsystem => 'RedHat'
    }}
    it {
      should contain_class('statsd::package')
      should contain_class('statsd::service')
      should contain_class('statsd::config')
    }
  end
end

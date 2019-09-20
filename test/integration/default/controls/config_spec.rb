control 'AptCacherNG configuration' do
  title 'should match desired lines'

  describe file('/etc/apt-cacher-ng/zzz_acng.conf') do
    # Default config
    its('content') { should include "BindAddress: 0.0.0.0" }

    # Custom config
    its('content') { should include "Port: 9999" }
  end
end

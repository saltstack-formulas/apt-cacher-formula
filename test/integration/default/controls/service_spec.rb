control 'AptCacherNG service' do
  title 'should be running and enabled'

  describe service('apt-cacher-ng') do
    it { should be_enabled }
    it { should be_running }
  end

  describe port(9999) do
    it { should be_listening }
    its('processes') { should include 'apt-cacher-ng' }
    its('protocols') { should include 'tcp' }
    its('addresses') { should include '0.0.0.0' }
  end
end

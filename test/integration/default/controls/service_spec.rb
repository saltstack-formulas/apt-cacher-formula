control 'AptCacherNG service' do
  title 'should be running and enabled'

  describe service('apt-cacher-ng') do
    it { should be_enabled }
    it { should be_running }
  end

  describe port(9999) do
    it { should be_listening }
  end
end

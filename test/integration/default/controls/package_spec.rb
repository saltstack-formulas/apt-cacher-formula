control 'AptCacherNG package' do
  title 'should be installed'

  describe package('apt-cacher-ng') do
    it { should be_installed }
  end
end

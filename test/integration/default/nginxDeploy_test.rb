control 'EPEL-install-1.0' do
    title 'Check if EPEL is installed'
    describe package 'epel-release' do
      it {should be_installed }
  end
end

control 'Nginx-install-1.0' do
  title 'Check if nginx is installed' 
  describe package 'nginx' do
    it { should be_installed }
  end
end  

control 'Nginx should be running' do
  describe service 'nginx' do
    it { should be_running }
  end
end 

control 'Nginx should be enabled at boot' do
  describe service 'nginx' do
    it { should be_enabled }
  end
end  

    

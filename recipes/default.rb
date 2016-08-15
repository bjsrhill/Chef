apt_update 'Update the apt cache daily' do
  frequency 86_400
  action :periodic
end

apt_package 'python-software-properties' do
end

execute "add-apt-repository ppa:webupd8team/java" do
  command "add-apt-repository ppa:webupd8team/java"
end

execute "apt-get update" do
  command "apt-get update"
end

execute  'oracle-java7-installer' do
  command 'apt-get install -y oracle-java7-installer'
end

execute 'openjdk-7-jre-headless' do
  command 'sudo install -y openjdk-7-jre-headless'
end

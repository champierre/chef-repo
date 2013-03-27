bash "install-rvm" do
	not_if 'which rvm'
	user 'vagrant'
	group 'vagrant'
	cwd '/home/vagrant'
	environment "HOME" => '/home/vagrant'  
	code <<-EOC
	  curl -L https://get.rvm.io | bash -s stable --autolibs=enabled --ruby=1.9.3
  EOC

end
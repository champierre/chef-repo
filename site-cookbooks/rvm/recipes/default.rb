#
# Cookbook Name:: rvm
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash "install-rvm" do
	not_if 'which rvm'
	user 'vagrant'
	group 'vagrant'
	cwd '/home/vagrant'
	environment "HOME" => '/home/vagrant'  
	code <<-EOC
	  curl -L https://get.rvm.io | bash -s stable --autolibs=enabled
  EOC

end
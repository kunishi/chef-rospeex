#
# Cookbook Name:: ros
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

template '/etc/apt/sources.list.d/ros-latest.list' do
  source 'default/ros-latest.list.erb'
  mode '644'
end

execute 'get ros repository public key' do
  command 'wget http://packages.ros.org/ros.key -O - | apt-key add -'
end

execute 'update package index' do
  command 'apt-get -y update'
  command 'DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade'
  command 'apt-get -y update'
end

execute 'install ros packages' do
  command 'apt-get -y install ros-indigo-desktop-full'
end

execute 'install rospeex packages' do
  command 'apt-get -y install ros-indigo-rospeex'
end

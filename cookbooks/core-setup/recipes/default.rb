#
# Cookbook Name:: core-setup
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'apt'
include_recipe 'build-essential'
include_recipe 'chrony'
include_recipe 'git'

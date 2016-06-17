#
# Cookbook Name:: app_sonarqube
# Recipe:: default
#
# Copyright 2016, APN LLC
#
# Author Abhishek Srivastava
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt::default'
include_recipe 'java::default'
include_recipe 'app_sonarqube::database'
include_recipe 'app_sonarqube::provision'

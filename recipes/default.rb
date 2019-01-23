#
# Cookbook:: SortMeRNA
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'libgomp1'

tar_extract node['SortMeRNA']['download_url'] do
  target_dir node['SortMeRNA']['install_dir']
  creates node['SortMeRNA']['bin_dir']
end

magic_shell_environment 'PATH' do
  filename 'sortmerna'
  value "$PATH:#{node['SortMeRNA']['bin_dir']}"
end

magic_shell_environment 'SORTMERNA_VERSION' do
  value node['SortMeRNA']['version']
end

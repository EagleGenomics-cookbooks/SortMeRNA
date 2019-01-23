default['SortMeRNA']['version'] = '2.1'
default['SortMeRNA']['basename'] = 'sortmerna-' + node['SortMeRNA']['version']
default['SortMeRNA']['archive_name'] = node['SortMeRNA']['basename'] + '-linux-64-multithread.tar.gz'      
default['SortMeRNA']['download_url'] = 'http://bioinfo.lifl.fr/RNA/sortmerna/code/' + node['SortMeRNA']['archive_name']
default['SortMeRNA']['install_dir'] = '/usr/local/'
default['SortMeRNA']['bin_dir'] = node['SortMeRNA']['install_dir'] + node['SortMeRNA']['basename'] + 'b'

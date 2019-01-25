# # encoding: utf-8

# Inspec test for recipe SortMeRNA::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# check that SortMeRNA folder exists
describe file('/usr/local/sortmerna-2.1b') do
  it { should be_directory }
end

# Check that SortMeRNA executable is in the path
describe command('which sortmerna') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match('sortmerna') }
end

# Check that SortMeRNA works
describe command('sortmerna --version') do
  its(:exit_status) { should eq 0 }
  its(:stderr) { should match('2.1') }
end

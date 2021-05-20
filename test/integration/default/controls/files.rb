title 'Verify files'

describe file('/home/foo_home') do
  it { should exist }
  its('mode') { should cmp '0700' }
end

describe file('/home/foo_home/dir/FILE') do
  it { should exist }
  it { should be_file }
  its('content') { should match /dir FILE/ }
end

describe file('/srv/bar') do
  it { should exist }
  its('mode') { should cmp '0700' }
end

describe file('/srv/bar/bar-file') do
  it { should exist }
  it { should be_file }
  its('content') { should match /bar file/ }
  its('mode') { should cmp '0600' }
end


describe file('/home/foo_home/foo-file') do
  it { should exist }
  it { should be_file }
  its('content') { should match /foo file/ }
  its('mode') { should cmp '0600' }
end

describe file('/srv/bar/bar-file') do
  it { should exist }
  it { should be_file }
  its('content') { should match /bar file/ }
  its('mode') { should cmp '0600' }
end

describe file('/srv/foobar/default-file') do
  it { should exist }
  it { should be_file }
  its('content') { should match /default file/ }
  its('mode') { should cmp '0600' }
end

describe file('/home/foobaz') do
  it { should_not exist }
end

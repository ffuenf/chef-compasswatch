require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

RSpec.configure do |c|
  c.before :all do
    c.path = '/sbin:/usr/sbin'
  end
end

describe package('compass') do
  it { should be_installed.by('gem') }
end

describe file('/etc/init.d/compasswatch') do
  it { should be_file }
  it { should be_executable }
end

describe file('/etc/compasswatch') do
  it { should be_directory }
end

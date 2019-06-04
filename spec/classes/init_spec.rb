require 'spec_helper'
describe 'barnyard2' do
  context 'with default values for all parameters' do
    it { should contain_class('barnyard2') }
  end
end

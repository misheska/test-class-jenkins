require 'spec_helper'

describe 'test-class-jenkins::default' do
  let(:chef_run) do
    ChefSpec::Runner.new().converge(described_recipe)
  end
end

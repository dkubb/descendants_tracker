# encoding: utf-8

require 'spec_helper'

describe DescendantsTracker, '#inherited' do
  subject { Class.new(object) }

  let!(:object)    { Class.new(superklass).extend(self.class.described_class) }
  let(:superklass) { Class.new                                                }

  it 'delegates to the superclass #inherited method' do
    superklass.should_receive(:inherited) do |descendant|
      descendant.should be_instance_of(Class)
      descendant.ancestors.should include(object)
    end
    subject
  end

  it 'adds the descendant' do
    object.should_receive(:add_descendant) do |descendant|
      descendant.should be_instance_of(Class)
      descendant.ancestors.should include(object)
    end
    subject
  end
end

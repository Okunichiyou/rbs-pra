# rbs_inline: enabled

class Comment < ApplicationRecord
  before_validation ::Callbacks::InstanceCallback.new(:title)
  after_validation ::Callbacks::InstanceCallback.new(:title)
  before_save ::Callbacks::InstanceCallback.new(:title)
  after_save ::Callbacks::InstanceCallback.new(:title)
  before_create ::Callbacks::InstanceCallback.new(:title)
  after_create ::Callbacks::InstanceCallback.new(:title)
  around_create ::Callbacks::InstanceCallback.new(:title)
  around_save ::Callbacks::InstanceCallback.new(:title)

  before_validation ::Callbacks::ClassCallback
  after_validation ::Callbacks::ClassCallback
  before_save ::Callbacks::ClassCallback
  before_create ::Callbacks::ClassCallback
  after_create ::Callbacks::ClassCallback
  after_save ::Callbacks::ClassCallback
  around_create ::Callbacks::ClassCallback
  around_save ::Callbacks::ClassCallback
end

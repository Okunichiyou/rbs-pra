# rbs_inline: enabled

class Comment < ApplicationRecord
  before_validation ::Callbacks::InstanceCallback.new(:title)
  before_validation ::Callbacks::ClassCallback
end

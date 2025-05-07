# rbs_inline: enabled

module Callbacks
  class ClassCallback
    # @rbs (ActiveRecord::Base) -> String?
    def self.before_validation(model_obj)
      str = model_obj.send(:content)
      model_obj.send("content=", str + " (before_validation)")
    end
  end
end

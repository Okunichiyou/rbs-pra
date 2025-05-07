# rbs_inline: enabled

module Callbacks
  class InstanceCallback
    # @rbs (Symbol) -> void
    def initialize(column)
      @column = column
    end

    # @rbs (ActiveRecord::Base) -> String?
    def before_validation(model_obj)
      str = model_obj.send(@column)
      model_obj.send("#{@column}=", str + " (before_validation)")
    end
  end
end

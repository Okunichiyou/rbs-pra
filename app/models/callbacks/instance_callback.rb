# rbs_inline: enabled

module Callbacks
  class InstanceCallback
    # @rbs (Symbol) -> void
    def initialize(column)
      @column = column
    end

    # @rbs (untyped) -> String?
    def before_validation(model_obj)
      Rails.logger.info("instance before_validation: #{model_obj}")
    end

    # @rbs (untyped) -> void
    def after_validation(model_obj)
      Rails.logger.info("instance after_validation: #{model_obj}")
    end

    # @rbs (untyped) -> void
    def before_save(model_obj)
      Rails.logger.info("instance before_save: #{model_obj}")
    end

    # @rbs (untyped) -> void
    def before_create(model_obj)
      Rails.logger.info("instance before_create: #{model_obj}")
    end

    # @rbs (untyped) -> void
    def after_create(model_obj)
      Rails.logger.info("instance after_create: #{model_obj}")
    end

    # @rbs (untyped) -> void
    def after_save(model_obj)
      Rails.logger.info("instance after_save: #{model_obj}")
    end

    # @rbs (untyped) { () -> void } -> void
    def around_create(model_obj)
      Rails.logger.info("instance around_create: #{model_obj}")
      yield
    end

    # @rbs (untyped) { () -> void } -> void
    def around_save(model_obj)
      Rails.logger.info("instance around_save: #{model_obj}")
      yield
    end
  end
end

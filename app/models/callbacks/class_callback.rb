# rbs_inline: enabled

module Callbacks
  class ClassCallback
    # @rbs (untyped) -> String?
    def self.before_validation(model_obj)
      Rails.logger.info("class before_validation: #{model_obj}")
    end

    # @rbs (untyped) -> void
    def self.after_validation(model_obj)
      Rails.logger.info("class after_validation: #{model_obj}")
    end

    # @rbs (untyped) -> void
    def self.before_save(model_obj)
      Rails.logger.info("class before_save: #{model_obj}")
    end

    # @rbs (untyped) -> void
    def self.before_create(model_obj)
      Rails.logger.info("class before_create: #{model_obj}")
    end

    # @rbs (untyped) -> void
    def self.after_create(model_obj)
      Rails.logger.info("class after_create: #{model_obj}")
    end

    # @rbs (untyped) -> void
    def self.after_save(model_obj)
      Rails.logger.info("class after_save: #{model_obj}")
    end

    # @rbs (untyped) { () -> void } -> void
    def self.around_create(model_obj)
      Rails.logger.info("class around_create: #{model_obj}")
      yield
    end

    # @rbs (untyped) { () -> void } -> void
    def self.around_save(model_obj)
      Rails.logger.info("class around_save: #{model_obj}")
      yield
    end
  end
end

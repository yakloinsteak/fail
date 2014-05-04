module Fail
  class State
    DEFAULT_THROTTLE = 0.001

    attr_reader :throttle, :column

    def initialize
      reset!
    end

    def reset!
      @throttle = DEFAULT_THROTTLE
      @column   = nil
    end

    def throttle_from cmd
      @throttle = cmd.gsub(/[^.\d]/, '').to_f
    end

    def column_from cmd
      @column = cmd.gsub(/[^\d]/, '').to_i
    end
  end
end

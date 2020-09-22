module Expressir
  module Model
    module Types
      class Aggregate
        attr_accessor :label
        attr_accessor :base_type

        def initialize(options = {})
          @label = options[:label]
          @base_type = options[:base_type]
        end
      end
    end
  end
end
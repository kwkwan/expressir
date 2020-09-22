module Expressir
    module Model
      module Expressions
        class EntityConstructor
          attr_accessor :entity
          attr_accessor :parameters
  
          def initialize(options = {})
            @entity = options[:entity]
            @parameters = options[:parameters]
          end
        end
      end
    end
  end
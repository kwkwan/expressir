module Expressir
  module Model
    module Statements
      class Case
        attr_accessor :selector
        attr_accessor :actions
        attr_accessor :otherwise_statement

        def initialize(options = {})
          @selector = options[:selector]
          @actions = options[:actions]
          @otherwise_statement = options[:otherwise_statement]
        end
      end
    end
  end
end
# frozen_string_literal: true

module Expressir
  module Liquid
    class ModelElementDrop < ::Liquid::Drop
      def initialize(model) # rubocop:disable Lint/MissingSuper
        @model = model
      end

      def _class
        @model.class.name
      end

      def file
        @model.file if @model.respond_to?(:file)
      end

      def source
        @model.source if @model.respond_to?(:source)
      end

      private

      def drop_klass_by_model(model)
        return nil if model.nil?

        klass_name = "#{model.class.name.gsub('::Model::', '::Liquid::')}Drop"
        klass = Object.const_get(klass_name)
        klass.new(model)
      end
    end
  end
end

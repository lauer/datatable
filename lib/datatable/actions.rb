# frozen_string_literal: true

module Datatable
  module Actions
    extend ActiveSupport::Concern

    class_methods do
      attr_reader :actions

      def action(name, path, *path_args, **options)
        (@actions ||= []) << {
          name: name,
          path: path,
          path_args: path_args,
          **options
        }
      end
    end

    included do
      delegate :actions, to: :class
    end
  end
end

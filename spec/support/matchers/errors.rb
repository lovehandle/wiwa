module CiviData
  module Spec
    module Matchers
      RSpec::Matchers.define :have_errors_on do |field|
        chain :with_message do |message|
          @message = message
        end

        match do |model|
          model.valid?
          @has_error = has_error?(model, field)

          if @message
            @has_error && model.errors[field].include?(@message)
          else
            @has_error
          end
        end

        failure_message_for_should do |model|
          "#{model} should #{description}".tap do |msg|
            if @has_error && @message
              msg << " while it is #{model.errors[field].inspect}"
            end
          end
        end

        failure_message_for_should_not do |model|
          "#{model.class} should not have an error on field #{field.inspect}"
        end

        description do |model|
          "have an error on field #{field.inspect}".tap do |msg|
            msg << " with a message #{@message.inspect}" if @message
          end
        end

        def has_error?(model, field)
          model.errors[field].present?
        end
      end
    end
  end
end

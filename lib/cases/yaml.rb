# frozen_string_literal: true

require "yaml"

module YAML
  class Formatter
    def initialize(format_file)
      @format = YAML.load(format_file)
    end

    def format_yaml(input)
      result = ""

      input.each do |hash|
        formatted_hash = formatted_hash(hash)
        result += "#{formatted_hash}\n"
      end
      result
    end

    private

    def format_hash(hash)
      formatted_values = @format.map do |field, length|
        value = hash[field].to_s[0, length]
        value.ljust(length)
      end
      formatted_values.join
    end
  end
end

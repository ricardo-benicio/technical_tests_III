# frozen_string_literal: true

require "spec_helper"
require "yaml"

RSpec.describe YAML do
  let(:format_file) { "format.yaml" }
  let(:formatted) { Formatter.new(format_file) }

  context "#solution_format" do
    it "format correctly a single element of the array" do
      input = [{ name: "Maria Neusa de Aparecida",
                 cpf: "97905796671",
                 state: "Sao Paulo",
                 value: "1234" }]

      expected_out = "97905796671Maria Neusa de00001234\n44010762900Ricardo Fontes00000567"

      expect(formatted.format(input)).to eq(expected_out)
    end

    it "format correctly various elements of the array" do
      input = [
        { name: "Maria Neusa de Aparecida", cpf: "97905796671", state: "Sao Paulo", value: "1234" },
        { name: "Ricardo Fontes", cpf: "44010762900", state: "Rio Grande do Sul", value: "567" }
      ]
      expected_output = "Maria Neusa   97905796671Sao Paulo    1234      \nRicardo Fonte44010762900Rio Grande do567       \n"

      expect(Problem::Formatter.new(:format_file).solution(input)).to eq(expected_output)
    end
  end
end

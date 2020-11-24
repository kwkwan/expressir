require "spec_helper"
require "expressir/express_exp/parser"
require "expressir/express_exp/formatter"

RSpec.describe Expressir::ExpressExp::Formatter do
  describe ".format" do
    it "formats a file" do
      repo = Expressir::ExpressExp::Parser.from_exp(input_file)

      result = Expressir::ExpressExp::Formatter.format(repo)
      expected_result = File.read(output_file)

      expect(result).to eq(expected_result)
    end
  end

  def input_file
    @input_file ||= Expressir.root_path.join(
      "original", "examples", "syntax", "remark.exp"
    )
  end

  def output_file
    @output_file ||= Expressir.root_path.join(
      "original", "examples", "syntax", "remark_formatted.exp"
    )
  end
end

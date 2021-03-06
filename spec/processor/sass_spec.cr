require "spec"
require "../../src/processor/sass"

describe Criss::Processor::Sass do
  it "renders sass" do
    processor = Criss::Processor::Sass.new
    resource = Criss::Resource.new(nil, "foo.sass")

    String.build do |io|
      processor.process(resource, IO::Memory.new("strong\n  color: red\n"), io)
    end.should eq "strong {\n  color: red; }\n"
  end
end

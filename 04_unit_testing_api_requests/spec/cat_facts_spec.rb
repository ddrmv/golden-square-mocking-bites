require 'net/http'
require 'cat_facts'

RSpec.describe CatFacts do
  it "provides a cat fact" do
    fake_requester = double(:requester)
    cat_facts = CatFacts.new(fake_requester)
    allow(fake_requester).to receive(:get)
      .with(URI("https://catfact.ninja/fact"))
      .and_return('{"fact":"The first cat show was in 1871 at the ' \
      'Crystal Palace in London.","length":63}')
    expect(cat_facts.provide).to eq "Cat fact: The first cat show was " \
      "in 1871 at the Crystal Palace in London."
  end
end
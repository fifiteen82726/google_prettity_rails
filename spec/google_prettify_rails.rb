require 'spec_helper'
require_relative '../lib/google_prettify_rails'

describe GooglePrettifyRails do
	it "description" do
		expect('1').to eq '1'  
	end

	it "Use put code" do
		a = %q(class Voila {
public:
  // Voila
  static const string VOILA = "Voila";

  // will not interfere with embedded <a href="#voila2">tags</a>.
})

b = %q(<pre class="prettyprint">) + a +%q(</pre>)

		expect(GooglePrettifyRails.put_code(a)).to eq  b
	end
end
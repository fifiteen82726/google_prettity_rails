require "google_prettify_rails/version"

module GooglePrettifyRails
    def self.put_code(a)
		content_tag(:pre, a, class: "prettyprint")
	end

end

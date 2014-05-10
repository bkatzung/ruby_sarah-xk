# Sarah::XK - Sarah with XKeys extensions
#
# Sarah provides a hybrid data structure consisting of a sequential array,
# a sparse array, and a random-access hash. XKeys provides extended/nested
# key access into array- and hash-like structures.
#
# @author Brian Katzung (briank@kappacs.com), Kappa Computer Solutions, LLC
# @copyright 2014 Brian Katzung and Kappa Computer Solutions, LLC
# @license MIT License

require 'sarah'
require 'xkeys'

class Sarah::XK < Sarah
    include XKeys::Hash

    VERSION = "0.0.2"

    # Returns a new Sarah::XK node for auto-vivification.
    #
    # @return [Sarah::XK]
    def xkeys_new (*args)
	if respond_to? :new_similar then self.new_similar
	else
	    self.class.new :default => self.default,
	      :default_proc => self.default_proc
	end
    end

end

# END

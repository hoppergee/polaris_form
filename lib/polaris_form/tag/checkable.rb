module PolarisForm
  module Tag
    module Checkable
      def input_checked?(options)
        if options.has_key?("checked")
          checked = options.delete "checked"
          checked == true || checked == "checked"
        else
          checked?(value)
        end
      end
    end
  end
end

# Math::PI  => 3.141592653589793

module Circle
    module Validity
        def calc_precision(c, d)
            if circumference_valid?(c, d)
                properties = [@ratio, @pi]
                precision = (2..15).find { |at_precision|
                    !properties.map { |n| n.truncate(at_precision) }.uniq.one?
                }
                precision-=1
            else
                "Invalid Cirumference value with respect to the diameter."
            end
        end

        def circumference_valid?(c, d)
            validate_input(c, d)
            @ratio = c/d
            @pi = Math::PI
            @ratio.between?(3.14, 3.142)
        end

        private
            def validate_input(c, d)
                if !(c.is_a?(Numeric)) || !(d.is_a?(Numeric))
                    raise ArgumentError, "Only Numeric inputs allowed"
                end
            end
    end
end
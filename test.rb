require_relative "validity.rb"
include Circle::Validity

p circumference_valid?(31.41, 10)
# p calc_precision(31.41, 10) # true
# p calc_precision(18.84956, 6)  # true
# p calc_precision(109.68, 34.91) # true
# p calc_precision(7479.14251, 2380.685) # true
# p calc_precision(18.84956,6)
# p calc_precision("dsd","csaf") # false
# p calc_precision(3,6)
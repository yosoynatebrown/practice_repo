# def basic_formula(any_matrix)
#   abc = ('a'..'z').to_a
#   index = 0
#   basic_formula_arr = []
#   any_matrix[0].each {|item|
#   basic_formula_arr << "#{item} * det_#{abc[index]}_minor"
#   index += 1}
#   index = 0
#   basic_formula_str = ""
#   basic_formula_arr.map {|string|
#     if index.even?
#       basic_formula_str << string
#       unless index == basic_formula_arr.count - 1
#         basic_formula_str << " - "
#       end
#       index += 1
#     elsif index.odd?
#       basic_formula_str << string
#       unless index == basic_formula_arr.count - 1
#         basic_formula_str << " + "
#       end
#       index += 1
#     end
#   }
#   return basic_formula_str
# end


def determinant_0(two_by_two)
return two_by_two[-2][-2] * two_by_two[-1][-1] - two_by_two[-2][-1] * two_by_two[-1][-2]
end

def determinant_1(three_by_three)
  det_a_minor = determinant_0([[three_by_three[1][1], three_by_three[1][2]], [three_by_three[2][1], three_by_three[2][2]]])
  det_b_minor = determinant_0([[three_by_three[1][0], three_by_three[1][2]], [three_by_three[2][0], three_by_three[2][2]]])
  det_c_minor = determinant_0([[three_by_three[1][0], three_by_three[1][1]], [three_by_three[2][0], three_by_three[2][1]]])
  return three_by_three[0][0] * det_a_minor - three_by_three[0][1] * det_b_minor + three_by_three[0][2] * det_c_minor
end


def determinant(matrix)
  if matrix[0].count == 1
    matrix[0][0]
  else
    dim = matrix[0].count - 1
    if dim == 1
      determinant_0(matrix)
    elsif dim == 2
      determinant_1(matrix)
    end
  end

end


determinant([[2,5,3], [1,-2,-1], [1, 3, 4]])

# determinant = matrix[0][0] * matrix[1][1] - matrix[0][1] * matrix[1][0]

# a * det(a_minor) - b * det(b_minor) + c * det(c_minor) - d * det(d_minor) + e * det(e_minor) - f * det(f_minor)

# [blank times determinant] alternating plus/minus signs, starting with minus

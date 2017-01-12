def spell_in_french num
  units_strings = ["zero", "un", "deux", "trois", "quatre", "cinq", "six", "sept", "huit", "neuf"]
  units_string[num]
end

(0..9).each { |i| puts spell_in_french i }

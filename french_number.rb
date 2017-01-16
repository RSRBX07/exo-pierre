def spell_in_french num
  units_strings = ["zero", "un", "deux", "trois", "quatre", "cinq", "six", "sept", "huit", "neuf"]
  return units_strings[num] if num < 10
end

(0..9).each { |i| puts spell_in_french i }

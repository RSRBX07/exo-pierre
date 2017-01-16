def spell_in_french num
  units_strings = ["zero", "un", "deux", "trois", "quatre", "cinq", "six", "sept", "huit", "neuf"]
  return units_strings[num] if num < 10
  deci_strings = ["","dix", "vingt", "trente", "quarante", "cinquante", "soixante", "soixante-dix", "quatrevingt", "quatrevingt-dix"]
  return deci_strings[num/10] + "-" + spell_in_french(num % 10) if (10..99).include? num 
end

(0..99).each { |i| puts spell_in_french i }

print "Enter the cost of your meal before tax: "
meal_cost = Float(gets)

print "Enter your local tax rate: "
tax_percent = Float(gets)

print "Enter the percent tip you would like to leave: "
tip_percent = Float(gets)

def calculate_rate(base,percentage)
	amount = base * percentage/100
	return amount
end
 
tax_value = calculate_rate(meal_cost,tax_percent)
meal_with_tax = meal_cost + tax_value
tip_value = calculate_rate(meal_with_tax,tip_percent)
total_cost = meal_with_tax + tip_value
 
print "The pre-tax cost of your meal was $%.2f.\n" % meal_cost
print "At %d%%, tax for this meal is $%.2f.\n" % [tax_percent, tax_value]
print "For a %d%% tip, you should leave $%.2f.\n" % [tip_percent, tip_value]
print "The grand total for this meal is then $%.2f.\n" % total_cost
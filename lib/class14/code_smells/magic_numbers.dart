// BEFORE ❌
// Using numbers directly without context.
double calculateDiscount(double total) {
  if (total > 100) return total * 0.15;
  return total * 0.05;
}

// AFTER ✅
// Replace magic numbers with named constants.
const double regularDiscountRate = 0.05;
const double premiumDiscountRate = 0.15;
const double premiumThreshold = 100.0;

double calculateDiscountRefactored(double total) {
  final discount = total > premiumThreshold
      ? premiumDiscountRate
      : regularDiscountRate;
  return total * discount;
}

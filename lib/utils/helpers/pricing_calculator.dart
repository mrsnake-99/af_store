class FPricingCalculator {
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCostForLocation(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  //----calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCostForLocation(location);
    return shippingCost.toStringAsFixed(2);
  }

  //---calculate tax amount

  static String calculateTaxAmount(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    return 0.15;
  }

  static double getShippingCostForLocation(String location) {
    return 8.0;
  }
}
// Commit at 2022-05-23 11:24:14
// Commit at 2022-08-18 14:50:02
// Commit at 2023-05-13 17:03:07
// Commit at 2023-10-14 12:05:05
// Commit at 2024-03-22 17:10:52
// Commit at 2024-11-22 14:25:46
// Commit at 2024-04-21 12:38:14
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
Random commit
Random commit

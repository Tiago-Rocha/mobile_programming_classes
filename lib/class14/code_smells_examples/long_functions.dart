// BEFORE ❌
// This function does too many things: validation, calculation, and printing.
void processOrder(String customer, double price, int quantity) {
  if (customer.isEmpty) {
    print("Invalid customer name");
    return;
  }

  double discount = 0;
  if (quantity > 10) discount = 0.1;
  double total = price * quantity * (1 - discount);

  print("Customer: $customer");
  print("Quantity: $quantity");
  print("Total: $total");
}

// AFTER ✅
// Split responsibilities into smaller functions with clear names.
bool validateCustomer(String name) => name.isNotEmpty;

double calculateTotal(double price, int quantity) {
  final discount = quantity > 10 ? 0.1 : 0.0;
  return price * quantity * (1 - discount);
}

void printReceipt(String customer, double total, int quantity) {
  print("Customer: $customer");
  print("Quantity: $quantity");
  print("Total: $total");
}

void processOrderRefactored(String customer, double price, int quantity) {
  if (!validateCustomer(customer)) {
    print("Invalid customer name");
    return;
  }
  final total = calculateTotal(price, quantity);
  printReceipt(customer, total, quantity);
}

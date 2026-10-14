
import Foundation

let prices = [50, 120, 80, 200, 150, 90]

// Filter prices greater than 100
let expensivePrices = prices.filter { $0 > 100 }
print("Prices above 100:", expensivePrices)

// Increase each price by 10
let increasedPrices = prices.map { $0 + 10 }
print("Prices after increase:", increasedPrices)

// Calculate the total of all prices
let total = prices.reduce(0, +)
print("Total price:", total)

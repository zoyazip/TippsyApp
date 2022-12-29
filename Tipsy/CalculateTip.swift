

import Foundation

struct CalculateTip {
    
    func getTip(bill: Double, split: Double, tip: Double) -> Double{
        return (bill / split) + ((bill / split) * tip)
    }
   
}

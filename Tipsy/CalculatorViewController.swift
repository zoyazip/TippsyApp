

import UIKit

class CalculatorViewController: UIViewController {
    
    var calculating = CalculateTip()
    var finalResult = 0.0
    var tipSelected: Double = 0.1
    var splitSelected: Double = 2.0
    var billSelected: Double = 0.0
    
    
    
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var userEnteredValueLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
   
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonTitle = String(sender.currentTitle!.dropLast())
        tipSelected = Double(buttonTitle)! / 100
        

    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(Int(sender.value))
        splitSelected = Double(sender.value)
        
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        billSelected = Double(userEnteredValueLabel.text!) ?? 0.0
        print("BillSelected: \(billSelected)")
        print("SplitSelected: \(splitSelected)")
        print("TipSelected: \(tipSelected)")
        finalResult = calculating.getTip(bill: billSelected, split: splitSelected, tip: tipSelected)
        print("Calculating Get Tips from Calc: \(finalResult)")
        performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
                    
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.result = finalResult
                    
        }
    }
   
}


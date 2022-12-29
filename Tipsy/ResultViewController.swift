

import UIKit

class ResultViewController: UIViewController {
    var result: Double?
    

    @IBOutlet weak var userAdviceLabel: UILabel!
    @IBOutlet weak var userResultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        userResultLabel.text = String(result!)
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
       print("UserTips: \(result!)")
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

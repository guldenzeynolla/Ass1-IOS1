import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    var score: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "\(String(describing: score))"
    }

}

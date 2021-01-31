import UIKit

class QuizViewController: UIViewController {

    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var nextB: UIButton!
    @IBOutlet weak var prevB: UIButton!
    
    let questions = ["1+2","3+1","12*2"]
    let answers = [["3","4","12","21"],["4","3","31","32"],["24","11","32","99"]]

    var currentQuestion = 0
    var rightAnswePlacement:UInt32 = 0
    var points = 0
    
    
    
    

    override func viewDidAppear(_ animated: Bool)
    {
        newQuestion()
    }
    
    
    func newQuestion()
    {

        question.text = questions[currentQuestion]
        rightAnswePlacement = arc4random_uniform(4)+1

        var button:UIButton = UIButton()
        var x = 1

        for i in 1...4
        {

            button = view.viewWithTag(i) as! UIButton

            if(i == Int(rightAnswePlacement))
            {
                button.setTitle(answers[currentQuestion][0], for: .normal)
            }
            else
            {
                button.setTitle(answers[currentQuestion][x], for: .normal)
                x = 2
            }

        }
        currentQuestion += 1

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "showScore" {
                if let resultController = segue.destination as? ResultViewController {
                    resultController.score = points
                }
            }
     }
    
    @IBAction func answersButton(_ sender: UIButton) {

        if(sender.tag == Int(rightAnswePlacement))
        {
            print("Right :)")
            points += 1
        }
        else
        {
            print("WRONG!!!")

        }

        if(currentQuestion != questions.count)
        {
                   newQuestion()

        }
        else
        {
            performSegue(withIdentifier: "showScore", sender: self)
        }
   }
    
    @IBAction func nextButton(_ sender: UIButton) {
        newQuestion()
    }
    
    @IBAction func prevButton(_ sender: UIButton) {
        newQuestion()
    }
    
}

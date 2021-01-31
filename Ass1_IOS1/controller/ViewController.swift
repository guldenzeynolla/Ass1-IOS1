//
//  ViewController.swift
//  Ass1_IOS1
//
//  Created by Гулден Зейнолла on 27.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var historyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "ImageQuiz")
    }
    @IBAction func startQuiz(_ sender: UIButton) {
        let vcStart = storyboard?.instantiateViewController(identifier: "QuizViewController") as! QuizViewController
        navigationController?.pushViewController(vcStart, animated: true)
    }
    
    @IBAction func seeHistory(_ sender: UIButton) {
        let vcHistory = storyboard?.instantiateViewController(identifier: "HistoryViewController") as! HistoryViewController
        navigationController?.pushViewController(vcHistory, animated: true)
    }
}


//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 07.07.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    var answers: [Answer] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        var animals = answers.compactMap { $0.animal }
        
        var array: [String] = []
        
        for animal in animals {
            if animal == Animal.dog {
                array
            }
        }
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
    
    deinit {
        print("ResultViewController has been deallocated")
    }
}




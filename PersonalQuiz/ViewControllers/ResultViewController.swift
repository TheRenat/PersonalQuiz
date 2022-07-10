//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 07.07.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    var answers: [Answer] = []
    
    
    @IBOutlet var emojiLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        let animals = answers.compactMap { $0.animal }
        let animalsArray = NSCountedSet(array: animals)
        let mostFrequentAnimal = animalsArray.max { animalsArray.count(for: $0) < animalsArray.count(for: $1) }
        
        if mostFrequentAnimal as? Animal == Animal.dog {
            emojiLabel.text = ("Вы - \(String(Animal.dog.rawValue))")
            descriptionLabel.text = Animal.dog.definition
        } else if mostFrequentAnimal as? Animal == Animal.cat {
            emojiLabel.text = ("Вы - \(String(Animal.cat.rawValue))")
            descriptionLabel.text = Animal.cat.definition
        } else if mostFrequentAnimal as? Animal == Animal.turtle {
            emojiLabel.text = ("Вы - \(String(Animal.turtle.rawValue))")
            descriptionLabel.text = Animal.turtle.definition
        } else if mostFrequentAnimal as? Animal == Animal.rabbit {
            emojiLabel.text = ("Вы - \(String(Animal.rabbit.rawValue))")
            descriptionLabel.text = Animal.rabbit.definition
        }
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
}




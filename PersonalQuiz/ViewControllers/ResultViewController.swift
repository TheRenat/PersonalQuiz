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
        let countedSet = NSCountedSet(array: animals)
        let mostFrequent = countedSet.max { countedSet.count(for: $0) < countedSet.count(for: $1) }
        
        print(mostFrequent)
        
        var dogs: [String] = []
        var cats: [Animal] = []
        var turtles: [Animal] = []
        var rabbits: [Animal] = []
        
        for animal in animals {
            if animal == Animal.dog {
                dogs.append("dog")
            } else if animal == Animal.cat {
                cats.append(animal)
            } else if animal == Animal.turtle {
                turtles.append(animal)
            } else if animal == Animal.rabbit {
                rabbits.append(animal)
            }
        }
        
        if mostFrequent as? Animal == Animal.dog {
            if let emoji = mostFrequent as? String {
                emojiLabel.text = answers.description
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




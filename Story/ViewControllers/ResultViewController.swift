//
//  ResultViewController.swift
//  Story
//
//  Created by mac on 4/13/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    var answer: [Answer]!
    
    
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    
    @IBAction func restartButtonPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
}



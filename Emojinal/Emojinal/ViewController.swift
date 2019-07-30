//
//  ViewController.swift
//  Emojinal
//
//  Created by Apple on 7/25/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let emojis = ["😃": "Happy", "🎶": "Musical", "🏒": "sporty"]
    let customMessage = ["Happy": ["ayeeeee", "glad your having a good day", "stay solid", "pretty hyped aye?"], "Musical": ["go listen to country music", "Listen to the song stuck in your head", "high school musical is waiting for you", "snag dads airpods"], "sporty": ["go shoot 200 pucks", "go snag dads airpods and go for a run", "do a hiit workout in the basement", "go to crossfit today"]]

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessage (sender:
        UIButton) {
        let selectedEmotion =
        sender.titleLabel?.text
        let number = Int.random(in: 0...3)
        let emojiMessage = customMessage[emojis[selectedEmotion!]!]![number]
        let alertController = UIAlertController(title: selectedEmotion, message: "\(emojiMessage)", preferredStyle:
            UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "Ok", style:
            UIAlertAction.Style.default, handler: nil))
        
       
    
    present(alertController, animated: true, completion: nil)
}
}


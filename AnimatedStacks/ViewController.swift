//
//  ViewController.swift
//  AnimatedStacks
//
//  Created by Paul Defilippi on 11/22/16.
//  Copyright © 2016 Paul Defilippi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var emojiView: [UIView]! {
        didSet {
            emojiView.forEach {
                $0.isHidden = true
            }
        }
    }
    
    @IBOutlet weak var emojiText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    @IBAction func ipadButtonPressed(_ sender: Any) {
        hideButtons()
        emojiText.text = "📲"
    }
    
    @IBAction func partyTimeButtonPressed(_ sender: Any) {
        hideButtons()
        emojiText.text = "🎉"
    }
    
    @IBAction func hotButtonPressed(_ sender: Any) {
        hideButtons()
        emojiText.text = "🔥"
    }
    
    @IBAction func worldButtonPressed(_ sender: Any) {
        hideButtons()
        emojiText.text = "🌎"
    }
    
    @IBAction func familyTimeButtonPressed(_ sender: Any) {
        hideButtons()
        emojiText.text = "👨‍👩‍👧‍👦"
    }
    
    @IBAction func christmasButtonPressed(_ sender: Any) {
        hideButtons()
        emojiText.text = "🎅🏼"
    }
    
    @IBAction func pizzaButtonPressed(_ sender: Any) {
        hideButtons()
        emojiText.text = "🍕"
    }
    
    @IBAction func onSettingsButtonPressed(_ sender: Any) {
        hideButtons()
        emojiText.text = "⚙"
    }
    
    func hideButtons() {
        UIView.animate(withDuration: 0.3) {
            self.emojiView.forEach {
                $0.isHidden = !$0.isHidden
            }
        }
    }

}


//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var app = App()
    
    @IBAction func buttonPressedIBAction(_ sender: UIButton) {
        if( sender.currentTitle == app.currentStory!.choice1){
            app.changeStory(app.currentStory!.choice1Destination)
        }else{
            app.changeStory(app.currentStory!.choice2Destination)
        }
        
        updateUI()
        
    }
    
    func updateUI(){
        storyLabel.text = app.currentStory!.title
        choice1Button.setTitle(app.currentStory!.choice1, for: .normal)
        choice2Button.setTitle(app.currentStory!.choice2, for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        app.initialize()
        app.changeStory(0)
        updateUI()
    }
    
    

}


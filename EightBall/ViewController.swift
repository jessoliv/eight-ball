//
//  ViewController.swift
//  EightBall
//
//  Created by Jessica Olivieri on 9/11/18.
//  Copyright © 2018 Jessica Olivieri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var resultLabel: UILabel!
	var index = -1
	let answerArray = ["It is certain!",
					   "Ask again later",
					   "My sources say no!",
					   "Yes!",
					   "Better not tell you.",
					   "Very doubtful!"]
	


	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	@IBAction func answerButtonPressed(_ sender: Any) {
		//resultLabel.text = answerArray.randomElement()
		
		
//		var randomPhrase = ""
//		repeat {
//			randomPhrase = answerArray.randomElement()!
//		} while randomPhrase == resultLabel.text!
//		resultLabel.text = randomPhrase
		
		// ANOTHER WAY TO MAKE SURE YOU ARE NOT REPEATING //
		var newIndex = -1
		repeat {
			newIndex = Int.random(in: 0...answerArray.count - 1)
		} while index == newIndex
		
		resultLabel.text = answerArray[newIndex]
		index = newIndex // global variable (lives forever)
		
		// could also do WHILE loop //
		
	}
	

}

	
	
	
	
	
	
	
	
	


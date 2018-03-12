//
//  ViewController.swift
//  Hackwich6
//
//  Created by CM Student on 3/12/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    //create a variable that can hold the value of the slider
    var currentValue: Int = 0
    //create a variable that's gonna hold our target value
    var targetValue: Int = 0
    
    @IBOutlet weak var targetLabel: UILabel!
    func updateTargetLabel
    updateTargetlabel 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //setting current value to the slider's value
        currentValue = lroundf(slider.value)
        
        //call start new round
        startNewRound()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderHasMoved(_ sender: Any) {
        
        print("The value of the slider is:\(slider.value)")
        currentValue = lroundf(slider.value)
    }
    
    func startNewRound () {
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
    }
    
    @IBAction func myGuessButtonPressed(_ sender: Any) {
        //new variable message that displays a message that includes currentValue
        let message = "The value is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        
        //create alert view
        let alert = UIAlertController(title:"Hello World!", message: message, preferredStyle: .alert)

        //button that user taps to dismiss view controller
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        //add the button to the alert view
        alert.addAction(action)
        
        //present alertview on the screen
        present(alert, animated: true, completion: nil)
        
        startNewRound()
    }
}


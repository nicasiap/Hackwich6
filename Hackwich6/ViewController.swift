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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderHasMoved(_ sender: Any) {
        
        print("The value of the slider is:\(slider.value)")
        currentValue = lroundf(slider.value)
    }
    
    @IBAction func myGuessButtonPressed(_ sender: Any) {
        //new variable message that displays a message that includes currentValue
        let message = "The value is: \(currentValue)"
        
        //create alert view
        let alert = UIAlertController(title:"Hello World!", message: message, preferredStyle: .alert)

        //button that user taps to dismiss view controller
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        //add the button to the alert view
        alert.addAction(action)
        //present alertview on the screen
        present(alert, animated: true, completion: nil)
    }
}


//
//  ViewController.swift
//  Light
//
//  Created by Andrew Korablin on 13.10.17.

import UIKit
var  lightOn = true
class ViewController: UIViewController {
    
    @IBOutlet weak var lightButton: UIButton!
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
      
    }
    func updateUI() {
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("On", for: .normal)
            lightButton.setTitleColor(.black, for: .normal)
            UIScreen.main.brightness = 1.0
        }   else   {
            view.backgroundColor = .black
            lightButton.setTitle("Off", for: .normal)
            lightButton.setTitleColor(.white, for: .normal)
            UIScreen.main.brightness = 0.1
        }
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        UIScreen.main.brightness = 1.0
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  Restos
//
//  Created by Ludovic Ollagnier on 31/01/2018.
//  Copyright © 2018 TecTec. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var destinationLabel: UILabel!
    @IBOutlet weak var originTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showTextfieldContent(_ sender: UIButton) {

        sender.isEnabled = false
        destinationLabel.text = originTextField.text
    }

}













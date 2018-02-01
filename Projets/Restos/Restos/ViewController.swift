//
//  ViewController.swift
//  Restos
//
//  Created by Ludovic Ollagnier on 31/01/2018.
//  Copyright © 2018 TecTec. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var styleSegmentedControl: UISegmentedControl!
    @IBOutlet weak var mediumPriceTextField: UITextField!
    @IBOutlet weak var isVisitedSwitch: UISwitch!

    @IBOutlet weak var gradeSlider: UISlider!
    @IBOutlet weak var gradeLabel: UILabel!
    @IBOutlet weak var gradeTitleLabel: UILabel!

    @IBOutlet var itemsToHide: [UIView]!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSegmentedControl()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    fileprivate func configureSegmentedControl() {

        styleSegmentedControl.removeAllSegments()
        for style in Restaurant.RestaurantStyle.all {
            let count = styleSegmentedControl.numberOfSegments
            styleSegmentedControl.insertSegment(withTitle: style.rawValue, at:count, animated: false)
            styleSegmentedControl.selectedSegmentIndex = count
        }
    }

    @IBAction func toggleVisited(_ sender: UISwitch) {
        for v in itemsToHide {
            v.isHidden = !sender.isOn
        }
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {

        let floatValue = sender.value
        let roundedFloat = roundf(floatValue)
        let intValue = Int(roundedFloat)
        gradeLabel.text = "\(intValue)"

        sender.value = roundedFloat
    }

    @IBAction func save(_ sender: UIButton) {

        //Recup des valeurs
        guard let nom = nameTextField.text else {

            return
        }
        guard let add = addressTextField.text else { return }

        //Verif valeurs

        //Création objet




    }
}













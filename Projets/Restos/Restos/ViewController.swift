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

    var library = Library()

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

        //Textfields
        guard let name = nameTextField.text, name.count > 2 else { return }
        guard let address = addressTextField.text, address.count > 2 else { return }
        guard let priceString = mediumPriceTextField.text, !priceString.isEmpty, let price = Int(priceString) else { return }

        // Segmented control
        let index = styleSegmentedControl.selectedSegmentIndex
        let style = Restaurant.RestaurantStyle.all[index]

        //Switch
        let isVisited = isVisitedSwitch.isOn

        //Slider
        var grade: Float? = nil
        if isVisited {
            grade = gradeSlider.value
        }

        //Création resto
        let createdRestaurant = Restaurant(name: name, adress: address, style: style, mediumPrice: price, notation: grade, isVisited: isVisited)

        library.add(createdRestaurant)


    }
}













//
//  ViewController.swift
//  Tipster
//
//  Created by Edward de la Fuente on 11/1/17.
//  Copyright © 2017 Edward de la Fuente. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var decimalPoint: UIButton!
    @IBOutlet weak var clear: UIButton!
    
    @IBOutlet weak var total: UILabel!
    
    @IBOutlet weak var leftTip: UILabel!
    @IBOutlet weak var leftPercentage: UILabel!
    @IBOutlet weak var leftTotal: UILabel!
    
    @IBOutlet weak var centerPercentage: UILabel!
    @IBOutlet weak var centerTip: UILabel!
    @IBOutlet weak var centerTotal: UILabel!
    
    @IBOutlet weak var rightPercentage: UILabel!
    @IBOutlet weak var rightTip: UILabel!
    @IBOutlet weak var rightTotal: UILabel!
    
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var groupSlider: UISlider!
    
    @IBOutlet weak var groupSizeLabel: UILabel!
    

    
    @IBAction func addZero(_ sender: UIButton) {
        if total.text != "0"{
            total.text = total.text! + String(0)
        }
        else {
            total.text = "0"
        }
        crunchNumbers()
    }
    @IBAction func addOne(_ sender: UIButton) {
        if total.text == "0"{
            total.text = String(1)
        }
        else{
            total.text = total.text! + String(1)
        }
        crunchNumbers()
    }
    @IBAction func addTwo(_ sender: UIButton) {
        if total.text == "0"{
            total.text = String(2)
        }
        else{
            total.text = total.text! + String(2)
        }
        crunchNumbers()
    }
    @IBAction func addThree(_ sender: UIButton) {
        if total.text == "0"{
            total.text = String(3)
        }
        else{
            total.text = total.text! + String(3)
        }
        crunchNumbers()
    }
    @IBAction func addFour(_ sender: UIButton) {
        if total.text == "0"{
            total.text = String(4)
        }
        else{
            total.text = total.text! + String(4)
        }
        crunchNumbers()
    }
    @IBAction func addFive(_ sender: UIButton) {
        if total.text == "0"{
            total.text = String(5)
        }
        else{
            total.text = total.text! + String(5)
        }
        crunchNumbers()
    }
    @IBAction func addSix(_ sender: UIButton) {
        if total.text == "0"{
            total.text = String(6)
        }
        else{
            total.text = total.text! + String(6)
        }
        crunchNumbers()
    }
    @IBAction func addSeven(_ sender: UIButton) {
        if total.text == "0"{
            total.text = String(7)
        }
        else{
            total.text = total.text! + String(7)
        }
        crunchNumbers()
    }
    @IBAction func addEight(_ sender: UIButton) {
        if total.text == "0"{
            total.text = String(8)
        }
        else{
            total.text = total.text! + String(8)
        }
        crunchNumbers()
    }
    @IBAction func addNine(_ sender: UIButton) {
        if total.text == "0"{
            total.text = String(9)
        }
        else{
            total.text = total.text! + String(9)
        }
        crunchNumbers()
    }
    @IBAction func addDecimalPoint(_ sender: UIButton) {
        if total.text == "0"{
            total.text = "0."
        }
        if (total.text?.characters.contains("."))!{
            total.text = total.text
        }
        else{
            total.text = total.text! + "."
        }
        crunchNumbers()
    }
    @IBAction func clearTotal(_ sender: UIButton) {
        total.text = String(0)
        crunchNumbers()
    }
    
    
    @IBAction func tipSliderSlide(_ sender: UISlider) {
//        let formatter = NumberFormatter()
//        formatter.numberStyle = .decimal
//        formatter.minimumFractionDigits = 2
//        formatter.maximumFractionDigits = 2
        leftPercentage.text = String(Int(round(tipSlider.value))) + "%"
        centerPercentage.text = String(Int(round(tipSlider.value)) + 5) + "%"
        rightPercentage.text = String(Int(round(tipSlider.value)) + 10) + "%"
        crunchNumbers()
    }
    
    @IBAction func groupSliderSlide(_ sender: UISlider) {
        groupSizeLabel.text = "Group Size: " + String(Int(round(groupSlider.value)))
        crunchNumbers()
    }
    
    func crunchNumbers() {
        if let inputString = total.text {
            let input = Double(inputString)
            let tip = Double(round(tipSlider.value))
            let group = Double(round(groupSlider.value))
            let minimumTip = round((input! * (tip/100))*100)/100
            let minPerPerson = (round(((input! + minimumTip)/group)*100))/100
            let mediumTip = round((input! * ((tip + 5)/100))*100)/100
            let medPerPerson = (round(((input! + mediumTip)/group)*100))/100
            let maximumTip = round((input! * ((tip + 10)/100))*100)/100
            let maxPerPerson = (round(((input! + maximumTip)/group)*100))/100
            leftTip.text = String(format:"%.2f", minimumTip)
            centerTip.text = String(format:"%.2f", mediumTip)
            rightTip.text = String(format:"%.2f", maximumTip)
            leftTotal.text = String(format:"%.2f", minPerPerson)
            centerTotal.text = String(format:"%.2f", medPerPerson)
            rightTotal.text = String(format:"%.2f", maxPerPerson)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


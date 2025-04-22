//
//  ViewController.swift
//  Calculator
//
//  Created by Adilet Kenesbekov on 22.04.2025.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    showResult.numberOfLines = 2
    // Do any additional setup after loading the view.
  }

  @IBOutlet weak var showResult: UILabel!

  @IBOutlet weak var number1: UITextField!
  
  @IBOutlet weak var number2: UITextField!
  

  @IBAction func plus(_ sender: Any) {
    let a = number1.text!
    let b = number2.text!
    guard let number1Value = Int(a), let number2Value = Int(b) else {
      print("Enter the numbers")
      showResult.text="Enter the values"
      return
    }
    let result = number1Value + number2Value
    showResult.text = String(result)
  }

  @IBAction func minus(_ sender: Any) {
    let a = number1.text!
    let b = number2.text!
    guard let number1Value = Int(a), let number2Value = Int(b) else {
      print("Enter the numbers")
      showResult.text="Enter the values"
      return
    }
    let result = number1Value - number2Value
    showResult.text = String(result)
  }
  
  @IBAction func multiply(_ sender: Any) {
    let a = number1.text!
    let b = number2.text!
    guard let number1Value = Int(a), let number2Value = Int(b) else {
      print("Enter the numbers")
      showResult.text="Enter the values"
      return
    }
    let result = number1Value * number2Value
    showResult.text = String(result)
  }
  
  @IBAction func division(_ sender: Any) {
    let a = number1.text!
    let b = number2.text!
    if Int(b) == 0 {
      showResult.text = "Cannot divide number by zero!"
      return
    }
    guard let number1Value = Int(a), let number2Value = Int(b) else {
      showResult.text="Enter the values"
      return
    }
    let result = number1Value / number2Value
    showResult.text = String(result)
  }
  


}


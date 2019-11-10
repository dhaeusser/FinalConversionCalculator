//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Davis Haeusser on 10/27/19.
//  Copyright © 2019 Davis Haeusser. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController, UIActionSheetDelegate {
    var numberInput:Float = 0.00
    var numberOutput:Float = 0.00
    var signflip:Float = 0.00
    var buttonpressed:Int = 0
    var alert:Int = 0
    @IBOutlet weak var inputDisplay: UITextField!
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputUnits: UITextField!
    @IBOutlet weak var outputUnits: UITextField!

    @IBAction func buttons(_ sender: Any) {
        buttonpressed = (sender as AnyObject).tag
        switch buttonpressed {
        case 1:
            self.inputDisplay.text = self.inputDisplay.text! + String((sender as AnyObject).tag-1)
        case 2:
            self.inputDisplay.text = self.inputDisplay.text! + String((sender as AnyObject).tag-1)
        case 3:
            self.inputDisplay.text = self.inputDisplay.text! + String((sender as AnyObject).tag-1)
        case 4:
            self.inputDisplay.text = self.inputDisplay.text! + String((sender as AnyObject).tag-1)
        case 5:
            self.inputDisplay.text = self.inputDisplay.text! + String((sender as AnyObject).tag-1)
        case 6:
            self.inputDisplay.text = self.inputDisplay.text! + String((sender as AnyObject).tag-1)
        case 7:
            self.inputDisplay.text = self.inputDisplay.text! + String((sender as AnyObject).tag-1)
        case 8:
            self.inputDisplay.text = self.inputDisplay.text! + String((sender as AnyObject).tag-1)
        case 9:
            self.inputDisplay.text = self.inputDisplay.text! + String((sender as AnyObject).tag-1)
        case 10:
            self.inputDisplay.text = self.inputDisplay.text! + String((sender as AnyObject).tag-1)
        case 12:
            numberInput = Float(self.inputDisplay.text!)!
            signflip = numberInput * -1
            self.inputDisplay.text = String(signflip)
        default:
            print("Error")
        }
            if self.inputDisplay.text != "" {
            self.numberInput = Float(inputDisplay.text!)!
            switch alert {
            case 0:
                self.numberOutput = (self.numberInput-32)*5/9
                self.outputDisplay.text = String(self.numberOutput)
                self.outputDisplay.text = self.outputDisplay.text!
            case 1:
                self.numberOutput = self.numberInput*9/5+32
                self.outputDisplay.text = String(self.numberOutput)
                self.outputDisplay.text = self.outputDisplay.text!
            case 2:
                self.numberOutput = self.numberInput*1.60934
                self.outputDisplay.text = String(self.numberOutput)
                self.outputDisplay.text = self.outputDisplay.text!
            case 3:
                self.numberOutput = self.numberInput/1.60934
                self.outputDisplay.text = String(self.numberOutput)
                self.outputDisplay.text = self.outputDisplay.text!
            default:
                numberOutput = numberInput
            }
            }
        }

    
    @IBAction func clear(_ sender: Any) {
        self.inputDisplay.text = ""
        self.outputDisplay.text = ""
    }
    @IBAction func decimal(_ sender: Any) {
        self.inputDisplay.text = self.inputDisplay.text! + "."
    }
    
       private let conversionArray: [(label: String,input: String,output: String)] = [("fahrenheit to celcius","°F","°C"),("celcius to fahrenheit","°C","°F"),("miles to kilometers","mi","km"),("kilometers to miles","km","mi")]
    @IBAction func converterControlleraction() {
    
    var tempnumber:Float = 0
    var outputnumber:Float = 0
    let converterController = UIAlertController(title: nil,message: "Choose Converter",preferredStyle: .actionSheet)

    let celciusAction = UIAlertAction(title: conversionArray[0].label,style: .default,handler: { (converterControlleraction)-> Void in
        self.inputUnits.text = self.conversionArray[0].input
        self.outputUnits.text = self.conversionArray[0].output
        self.alert = 0
        if self.inputDisplay.text != "" {
        tempnumber = Float(self.inputDisplay.text!)!
        outputnumber = (tempnumber-32)*5/9
        self.outputDisplay.text = String(outputnumber)
        }
    })
    let fahrenheitAction = UIAlertAction(title: conversionArray[1].label, style: .default,handler: { (converterControlleraction)-> Void in
        self.inputUnits.text = self.conversionArray[1].input
        self.outputUnits.text = self.conversionArray[1].output
        self.alert = 1
        if self.inputDisplay.text != "" {
            tempnumber = Float(self.inputDisplay.text!)!
            outputnumber = tempnumber*9/5+32
            self.outputDisplay.text = String(outputnumber)
        }
    })
    let kilometerAction = UIAlertAction(title: conversionArray[2].label,style: .default ,handler: { (converterControlleraction)-> Void in
        self.inputUnits.text = self.conversionArray[2].input
        self.outputUnits.text = self.conversionArray[2].output
        self.alert = 2
        if self.inputDisplay.text != "" {
            tempnumber = Float(self.inputDisplay.text!)!
            outputnumber = tempnumber*1.60934
            self.outputDisplay.text = String(outputnumber)
        }
    })
    let milesAction = UIAlertAction(title: conversionArray[3].label,style: .default,handler: { (converterControlleraction)-> Void in
        self.inputUnits.text = self.conversionArray[3].input
        self.outputUnits.text = self.conversionArray[3].output
        self.alert = 3
        if self.inputDisplay.text != "" {
            tempnumber = Float(self.inputDisplay.text!)!
            outputnumber = tempnumber/1.60934
            self.outputDisplay.text = String(outputnumber)
        }
    })
    converterController.addAction(celciusAction)
    converterController.addAction(fahrenheitAction)
    converterController.addAction(kilometerAction)
    converterController.addAction(milesAction)
        self.present(converterController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let conversionArray: [(label: String,input: String,output: String)] = [("fahrenheit to celcius","°F","°C"),("celcius to fahrenheit","°C","°F"),("miles to kilometers","mi","km"),("kilometers to miles","km","mi")]
        inputUnits.text = conversionArray[0].input
        outputUnits.text = conversionArray[0].output
         }

  
    
        // Do any additional setup after loading the view.
    
      

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ViewController.swift
//  GiorgiPilishvili_Homework20
//
//  Created by GIORGI PILISSHVILI on 09.08.22.
//

import UIKit

class ViewController: UIViewController {
        
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    func printPrimeNumbers() {
        for num in 1...100_000 {
            if num.isPrime() {
                print(num)
            }
        }
    }
    
    // MARK: Actions

    @IBAction func actionButton(_ sender: UIButton) {
        
        sender.isEnabled = false
        
        DispatchQueue.global().async {
            self.printPrimeNumbers()
            DispatchQueue.main.async {
                sender.isEnabled = true
            }
        }
        
    }
    
}

// MARK: - Extension for check prime number

extension Int {
    
    func isPrime() -> Bool {
        
        if self == 1 {
            return false
        }
        
        for num in 2..<self {
            if self % num == 0 {
                return false
            }
        }
        
        return true
        
    }
    
}

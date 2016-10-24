//
//  ViewController.swift
//  Hospital




import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("*****")
        let bill = Principal(name: "bill", vacationDays: 35)
        
        print("\(bill.name) has \(bill.vacationDays) vacation days.")
        print("wages = \(bill.wages())")
        print("message: \(bill.callParentDeliveringMessage(.light))")
        
        let jack = Teacher(name: "Jack", vacationDays: 12)
        print("\(jack.name) has \(jack.vacationDays) vacation days.")
        print("wages = \(jack.wages())")
        print("message: \(jack.callParentDeliveringMessage(.severe))")
        print("message: \(jack.teachSubject(.math))")
        
        print("*****")
        
    }
    
}

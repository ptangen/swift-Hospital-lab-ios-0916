//
//  SchoolEmployees.swift
//  Hospital

/*
 Create a new struct called AdvisoryBoardMember which has two instance properties (both of which should be variables). One should be called name of type String. The other should be called vacationDays of type Int with a default value of 30. As well, implement the function wages() which takes in no argument and returns a Double. In your implementation of this function, you should return back the number 100_000.00 (or 100000.00, they are both the same thing).
 */

struct AdvisoryBoardMember: Employee {
    var name: String
    var vacationDays: Int = 30
    
    func wages() -> Double {
        return 100_000.00
    }
    
    // requestForVacation(_:) in Timeoff protocol extension
}

// Create a new struct called Principal which has two instance properties (both of which should be variables). One is called name of type String. The other is called vacationDays of type Int with a default value of 20. As well, implement the wages() function which takes in no arguments and returns a Double. In your implementation, it should return back 80_000.00.


struct Principal {
    var name: String
    var vacationDays: Int = 20
    
    func wages() -> Double {
        return 80_000.00
    }
    
    // requestForVacation(_:) in Timeoff protocol extension
}

// Error coming that principal does not conform to reprimand, but the two methods in reprimand are covered through an extension.
extension Principal: Employee, Reprimand { }

// Create a struct called Teacher which has two instance properties (both should be variables). One is called name of type String. The other is called vacationDays of type Int with a default value of 15. Do not implement the wages() function.

struct Teacher: Teach {
    var name: String
    var vacationDays: Int = 15
}

extension Teacher: Employee, Reprimand { }







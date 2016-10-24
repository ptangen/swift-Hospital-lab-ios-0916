//
//  School.swift
//  Hospital

//create a protocol called Payable that has one function requirement. The name of the function should be wages(). It takes in no arguments but returns back a Double.

protocol Payable {
    func wages() -> Double
}



extension Payable {
    // wages() function. In your implementation, it should just return back 50_000.00. Notice how I used an underbar here, this can act as a comma (as if you were writing it in on paper), it doesn't do anything in code. It just makes your code more readable instead of having to see a bunch of zeros next to each other.
    
    func wages() -> Double {
        return 50_000.00
    }
    
}

// create another protocol called TimeOff which includes a property named vacationDays of type Int that will be both gettable and settable. It should include a function called requestForVacation(_:) which takes in one argument named days of type Int and returns a Bool.
protocol TimeOff {
    var vacationDays: Int { get set }
    func requestForVacation(_ days: Int) -> Bool
}

// Below this TimeOff protocol, create an extension on the TimeOff protocol where we will provide some default implementation to the requestForVacation(_:) function. In our implementation of the requestForVacation(_:) function, you should return true if and only if there are enough vacationDays to satisfy the request. If the vacationDays is equal to 9 and requestForVacation(10) is called by that instance (which will be our structure later on), then it should return false.
extension TimeOff {
    func requestForVacation(_ days: Int) -> Bool {
        if self.vacationDays >= days { return true }; return false
    }
}

// This enum is called Punishment and should have three cases. severe, light and medium.
enum Punishment {
    case severe
    case light
    case medium
}

// Create an enum called Subject which has three cases. math, science and english.

enum Subject {
    case math
    case science
    case english
}


// Create a protocol called Reprimand which requires that there be two functions. The first function is called disciplineStudent(_:) which takes in one argument called scale of type Punishment and returns a String. The second function is called callParentDeliveringMessage(_:) which takes in one argument called scale of type Punishment and returns a String.

protocol Reprimand {
    func disciplineStudent(_ scale: Punishment) -> String
    func callParentDeliveringMessage(_ scale: Punishment) -> String
}


extension Reprimand {
    func disciplineStudent(_ scale: Punishment) -> String {
        switch scale {
        case .severe:
            return "We are expelling you from the school!"
        case .light:
            return "You're to go back to class, don't do it again."
        case .medium:
            return "Why would you think that's a good idea?! You're going to detention."
        }
    }
    
    func callParentDeliveringMessage(_ scale: Punishment) -> String {
        switch scale {
        case .severe:
            return "Your child has been expelled from the school."
        case .light:
            return "Your child thought it was funny to put gum in Amy's hair."
        case .medium:
            return "Your child has become a terror in the classroom."
        }
    }
}

// Create a protocol called Teach which requires that there be one function. That one function should be called teachSubject(_:) which takes in one argument called subject of type Subject. It will return a String.

protocol Teach {
    func teachSubject(_ type: Subject) -> String
}

extension Teach {
    func teachSubject(_ type: Subject) -> String {
        switch type {
        case .math:
            return "Take out your math books please."
        case .science:
            return "Time to learn the best subject of all! Science!!"
        case .english:
            return "To read or not to read. Everyone take out your english books."
        }
    }
}

protocol Employee: Payable, TimeOff { }




















// ___FILEHEADER___

import UIKit

// MARK: -  Event
enum ___VARIABLE_MODULENAME___Event {
    case viewDidLoad
    case viewWillAppear
}

// MARK: -  Action
enum ___VARIABLE_MODULENAME___Action {
    
}

// MARK: - State
struct ___VARIABLE_MODULENAME___State: Equatable {
    struct Request: Equatable {
        let sortValue: String
        let searchTerm: String

        static var empty: Request {
            return Request(sortValue: "", searchTerm: "")
        }
    }

    enum Presentation: Equatable {
        case none
        case loading(request: Request)
        case display
    }

    let presentation: Presentation
}
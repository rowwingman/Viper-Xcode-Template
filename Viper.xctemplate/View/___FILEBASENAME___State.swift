// ___PACKAGENAME___
// Created by ___FULLUSERNAME___ on ___DATE___.
// Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.</string>

import Foundation

// MARK: -  Event
enum ___VARIABLE_MODULENAME___Event {
    case viewDidLoad
}

// MARK: -  Action
enum ___VARIABLE_MODULENAME___Action {
    
}

// MARK: - State
struct RestaurantsListFlowState: Equatable {
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
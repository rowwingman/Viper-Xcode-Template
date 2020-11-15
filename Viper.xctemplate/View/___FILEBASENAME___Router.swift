// ___PACKAGENAME___
// Created by ___FULLUSERNAME___ on ___DATE___.
// Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.</string>

import UIKit

// MARK: - Route
enum ___VARIABLE_MODULENAME___Route {
    
}

// MARK: - Router
protocol ___VARIABLE_MODULENAME___Router {
    func navigate(toRoute route: ___VARIABLE_MODULENAME___Route)
}

// MARK: - Router Dependencies
protocol ___VARIABLE_MODULENAME___RouterDependencies {
    
}

final class ___VARIABLE_MODULENAME___RouterDependenciesImpl: ___VARIABLE_MODULENAME___RouterDependencies {
    
}

// MARK: - Router Implementation
final class ___VARIABLE_MODULENAME___RouterImpl: ___VARIABLE_MODULENAME___Router {
    private let _dependencies: ___VARIABLE_MODULENAME___RouterDependencies
    private weak var _view: UIView? 

    func setView(_ view: UIView) {
        _view = view
    }

    // MARK: - Init
    init(dependencies: ___VARIABLE_MODULENAME___RouterDependencies) {
        _dependencies = dependencies
    }

    // MARK: - Router
	func navigate(toRoute route: ___VARIABLE_MODULENAME___Route) {
        switch route {
            default: ()
        }
    }
}

// ___FILEHEADER___

import UIKit

// MARK: - Route
enum ___VARIABLE_MODULENAME___Route {
    
}

// MARK: - Router
protocol ___VARIABLE_MODULENAME___Router {
    func navigate(toRoute route: ___VARIABLE_MODULENAME___Route)
    func dismiss(animated: Bool)
}

// MARK: - Router Dependencies
protocol ___VARIABLE_MODULENAME___RouterDependencies {
    
}

final class ___VARIABLE_MODULENAME___RouterDependenciesImpl: ___VARIABLE_MODULENAME___RouterDependencies {
    
}

// MARK: - Router Implementation
final class ___VARIABLE_MODULENAME___RouterImpl: ___VARIABLE_MODULENAME___Router {
    private let _dependencies: ___VARIABLE_MODULENAME___RouterDependencies
    weak var viewController: UIViewController?

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

    func dismiss(animated: Bool) {
		self?.viewController?.dismiss(animated: animated, completion: nil)
	}
}

// ___FILEHEADER___

import UIKit

protocol ___VARIABLE_MODULENAME___Protocol: class {

}

protocol ___VARIABLE_MODULENAME___DelegateProtocol: class {
    
}

final class ___VARIABLE_MODULENAME___Assembly {
    static func makeViewController(delegate: ___VARIABLE_MODULENAME___DelegateProtocol?) -> (UIViewController & ___VARIABLE_MODULENAME___Protocol) {
        let routerDependencies = ___VARIABLE_MODULENAME___RouterDependenciesImpl()
        let router = ___VARIABLE_MODULENAME___RouterImpl(dependencies: routerDependencies)

        let networkService = NetworkService()
        let interactor = ___VARIABLE_MODULENAME___InteractorImpl(networkService: networkService)

        let presenterDependencies = ___VARIABLE_MODULENAME___PresenterDependenciesImpl()
        let presenter = ___VARIABLE_MODULENAME___PresenterImpl(dependencies: presenterDependencies,
                                                               interactor: interactor,
                                                               router: router,
                                                               delegate: delegate)
        
        let viewController = ___VARIABLE_MODULENAME___ViewController(presenter: presenter)

        presenter.view = viewController
        router.viewController = viewController
        interactor.output = presenter
        
        return viewController
    }
}

// MARK: - ModuleName Adapters
extension NetworkServiceImpl: ModuleNameNetworkService {
    // adopt network service implemenentation to module network service 
}
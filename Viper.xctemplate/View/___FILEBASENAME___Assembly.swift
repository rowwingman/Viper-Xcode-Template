// ___PACKAGENAME___
// Created by ___FULLUSERNAME___ on ___DATE___.
// Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.</string>

import UIKit

protocol ___VARIABLE_MODULENAME___Protocol: class {

}

protocol ___VARIABLE_MODULENAME___DelegateProtocol: class {
    
}

public final class ___VARIABLE_MODULENAME___Assembly {
    public static func makeView(delegate: ___VARIABLE_MODULENAME___DelegateProtocol?) -> (UIView & ___VARIABLE_MODULENAME___Protocol) {
        let routerDependencies = ___VARIABLE_MODULENAME___RouterDependenciesImpl()
        let router = ___VARIABLE_MODULENAME___RouterImpl(dependencies: routerDependencies)

        let networkService = NetworkService()
        let interactor = ___VARIABLE_MODULENAME___InteractorImpl(networkService: networkService)

        let presenterDependencies = ___VARIABLE_MODULENAME___PresenterDependenciesImpl()
        let presenter = ___VARIABLE_MODULENAME___PresenterImpl(dependencies: presenterDependencies,
                                                               interactor: interactor,
                                                               router: router,
                                                               delegate: delegate)
        
        let view = ___VARIABLE_MODULENAME___View(presenter: presenter)
        presenter.setView(view)
        router.setView(view)
        
        return view
    }
}

// MARK: - ModuleName Adapters
extension NetworkServiceImpl: ModuleNameNetworkService {
    // adopt network service implemenentation to module network service 
}
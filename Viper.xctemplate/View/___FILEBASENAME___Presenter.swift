// ___PACKAGENAME___
// Created by ___FULLUSERNAME___ on ___DATE___.
// Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.</string>

import UIKit

protocol ___VARIABLE_MODULENAME___Presenter: class {
    func didReceiveEvent(_ event: ___VARIABLE_MODULENAME___Event)
    func didTriggerAction(_ action: ___VARIABLE_MODULENAME___Action)
}

// MARK: - Dependencies
protocol ___VARIABLE_MODULENAME___PresenterDependencies {
    
}

final class ___VARIABLE_MODULENAME___PresenterDependenciesImpl: ___VARIABLE_MODULENAME___PresenterDependencies {
    
}

// MARK: - Presentater Implementation
final class ___VARIABLE_MODULENAME___PresenterImpl: ___VARIABLE_MODULENAME___Presenter {
    private let _dependencies: ___VARIABLE_MODULENAME___PresenterDependencies
    private let _interactor: ___VARIABLE_MODULENAME___Interactor
    private let _router: ___VARIABLE_MODULENAME___Router
    private weak var delegate: ___VARIABLE_MODULENAME___DelegateProtocol?

    private weak var view: ___VARIABLE_MODULENAME___ViewProtocol?
    func setView(_ view: ___VARIABLE_MODULENAME___ViewProtocol) {
        self.view = view
    }
    
    // MARK: - Init
    init(dependencies: ___VARIABLE_MODULENAME___PresenterDependencies, 
         interactor: ___VARIABLE_MODULENAME___Interactor, 
         router: ___VARIABLE_MODULENAME___Router, 
         delegate: ___VARIABLE_MODULENAME___DelegateProtocol?) {
        _dependencies = dependencies
        _interactor = interactor
        _router = router
        _delegate = delegate
    }

    // MARK: - Presentater
    func didReceiveEvent(_ event: ___VARIABLE_MODULENAME___Event) {
        switch event {
            case .viewDidInit:
                debugPrint("viewDidInit")
        }
    }

    func didTriggerAction(_ action: ___VARIABLE_MODULENAME___Action) {
        switch action {
            default: ()
        }
    }
}

// MARK: - ___VARIABLE_MODULENAME___InteractorOutput
extension ___VARIABLE_MODULENAME___PresenterImpl: ___VARIABLE_MODULENAME___InteractorOutput {

}
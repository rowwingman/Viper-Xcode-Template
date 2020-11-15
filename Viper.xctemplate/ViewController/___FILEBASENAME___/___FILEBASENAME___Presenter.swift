// ___FILEHEADER___

import UIKit

protocol ___VARIABLE_MODULENAME___Presenter: class {
    func didReceiveEvent(_ event: ___VARIABLE_MODULENAME___Event)
    func didTriggerAction(_ action: ___VARIABLE_MODULENAME___Action)
}

// MARK: - Presenter Implementation
final class ___VARIABLE_MODULENAME___PresenterImpl: ___VARIABLE_MODULENAME___Presenter {
    // MARK: - Viper Layers
    private let _interactor: ___VARIABLE_MODULENAME___Interactor
    private let _router: ___VARIABLE_MODULENAME___Router
    private weak var _delegate: ___VARIABLE_MODULENAME___DelegateProtocol?
    weak var view: ___VARIABLE_MODULENAME___ViewInput?

    // MARK: - Dependencies
    private let _dependencies: ___VARIABLE_MODULENAME___PresenterDependencies
    
    // MARK: - Init
    init(interactor: ___VARIABLE_MODULENAME___Interactor, 
         router: ___VARIABLE_MODULENAME___Router, 
         delegate: ___VARIABLE_MODULENAME___DelegateProtocol?) {
        _interactor = interactor
        _router = router
        _delegate = delegate
        _dependencies = dependencies
    }

    // MARK: - Presenter
    func didReceiveEvent(_ event: ___VARIABLE_MODULENAME___Event) {
        switch event {
            case .viewDidLoad:
                debugPrint("viewDidLoad")
            case .viewWillAppear:
                debugPrint("viewWillAppear")
        }
    }

    func didTriggerAction(_ action: ___VARIABLE_MODULENAME___Action) {
        switch action {
            default: break
        }
    }
}

// MARK: - ___VARIABLE_MODULENAME___InteractorOutput
extension ___VARIABLE_MODULENAME___PresenterImpl: ___VARIABLE_MODULENAME___InteractorOutput {

}
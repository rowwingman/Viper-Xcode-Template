import UIKit

protocol ___VARIABLE_MODULENAME___PresenterProtocol: class {
    func viewDidInit()
}

final class ___VARIABLE_MODULENAME___Presenter {
    private let dependencies: ___VARIABLE_MODULENAME___PresenterDependenciesProtocol
    private weak var view: (___VARIABLE_MODULENAME___ViewProtocol & UIView)?
    private let interactor: ___VARIABLE_MODULENAME___InteractorProtocol
    private let router: ___VARIABLE_MODULENAME___RouterProtocol
    private weak var delegate: ___VARIABLE_MODULENAME___DelegateProtocol?
    
    init(dependencies: ___VARIABLE_MODULENAME___PresenterDependenciesProtocol, 
         view: (___VARIABLE_MODULENAME___ViewProtocol & UIView), 
         interactor: ___VARIABLE_MODULENAME___InteractorProtocol, 
         router: ___VARIABLE_MODULENAME___RouterProtocol, 
         delegate: ___VARIABLE_MODULENAME___DelegateProtocol?) {
        self.dependencies = dependencies
        self.view = view
        self.interactor = interactor
        self.router = router
        self.delegate = delegate
    }
}

extension ___VARIABLE_MODULENAME___Presenter: ___VARIABLE_MODULENAME___PresenterProtocol {
    func viewDidInit() {
        
    }
}

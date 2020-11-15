// ___FILEHEADER___

import Foundation

protocol NetworkService {
    // Network Service protocol in concrete module should be defined in the ModuleNameDependencies file.
    // This declaration is just for an example
}

// MARK: - Interactor
protocol ___VARIABLE_MODULENAME___Interactor {

}

protocol ___VARIABLE_MODULENAME___InteractorOutput: class {
    
}

// MARK: - Interactor Implementation
final class ___VARIABLE_MODULENAME___InteractorImpl: ___VARIABLE_MODULENAME___Interactor {
    private let _networkService: NetworkService
    weak var output: ___VARIABLE_MODULENAME___InteractorOutput?
    
    // MARK: - Init
    init(networkService: NetworkService) {
        _networkService = networkService
    }

    // MARK: - Interactor
}

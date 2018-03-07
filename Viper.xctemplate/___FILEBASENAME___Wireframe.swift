//
//  Created by Sebastian Boldt on 07.03.18.
//  Copyright © 2018 Sebastian Boldt. All rights reserved.
//

import UIKit

protocol ___VARIABLE_MODULENAME___WireframeProtocol {
    func makeViewController() -> ___VARIABLE_MODULENAME___ViewController
}

struct ___VARIABLE_MODULENAME___Wireframe: ___VARIABLE_MODULENAME___WireframeProtocol {
    func makeViewController() -> ___VARIABLE_MODULENAME___ViewController {
        
        let view = ___VARIABLE_MODULENAME___ViewController()
        let router = ___VARIABLE_MODULENAME___Router()

        let interactorDependencies = ___VARIABLE_MODULENAME___InteractorDependencies()
        let presenterDependencies = ___VARIABLE_MODULENAME___PresenterDependencies()

        let interactor = ___VARIABLE_MODULENAME___Interactor(dependencies: interactorDependencies)
        let presenter = ___VARIABLE_MODULENAME___Presenter(dependencies: presenterDependencies, view: view, interactor: interactor, router: router)
        interactor.setPresenter(presenter)
        
        return view
    }
}
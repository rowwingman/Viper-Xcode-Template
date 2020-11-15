// ___PACKAGENAME___
// Created by ___FULLUSERNAME___ on ___DATE___.
// Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.</string>

import UIKit

protocol ___VARIABLE_MODULENAME___ViewProtocol: ___VARIABLE_MODULENAME___Protocol {
    
}

// MARK: - View
final class ___VARIABLE_MODULENAME___View: UIView {
    private let presenter: ___VARIABLE_MODULENAME___Presenter

    // MARK: - Init
    init(presenter: ___VARIABLE_MODULENAME___Presenter) {
        self.presenter = presenter
        super.init(frame: .zero)
        self.setupView()
        presenter.didReceiveEvent(.viewDidInit)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("Use init(presenter:) instead")
    }
}

extension ___VARIABLE_MODULENAME___View: ___VARIABLE_MODULENAME___ViewProtocol {
    
}

extension ___VARIABLE_MODULENAME___View: ___VARIABLE_MODULENAME___Protocol {
  
}

extension ___VARIABLE_MODULENAME___View {
  	private func setupView() {
        self.setColors()
  	}

  	private func setColors() {
        self.backgroundColor = .white
  	}
}

// ___FILEHEADER___

import UIKit

protocol ___VARIABLE_MODULENAME___ViewInput: class {
    func presentState(state: ___VARIABLE_MODULENAME___State)
}

// MARK: - ViewController
final class ___VARIABLE_MODULENAME___ViewController: UIViewController, ___VARIABLE_MODULENAME___ViewInput  {
    private let _presenter: ___VARIABLE_MODULENAME___Presenter
    
    // MARK: - Init
    init(presenter: ___VARIABLE_MODULENAME___Presenter) {
        _presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Use init(presenter:) instead")
    }
    
    // MARK: - ViewController Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        _configurateViewsAutoLayout()
        _configurateViews()
        _presenter.didReceiveEvent(.viewDidLoad)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        _presenter.didReceiveEvent(.viewWillAppear)
    }

    // MARK: - Layout Constraints
    private func _configurateViewsAutoLayout() {
        // add subviews

        NSLayoutConstraint.activate([
            // constraints
        ])
    }

    // MARK: - Configuration Views
    private func _configurateViews() {
        // setup colors
        // setup fonts
        // setup initial data, like title
    }

    // MARK: - ___VARIABLE_MODULENAME___ViewInput
    func presentState(state: ___VARIABLE_MODULENAME___State) {
        // Insert state handler here...
    }
}

extension ___VARIABLE_MODULENAME___ViewController: ___VARIABLE_MODULENAME___Protocol {
  
}
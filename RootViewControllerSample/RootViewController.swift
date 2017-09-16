//
//  RootViewController.swift
//  RootViewControllerSample
//
//  Copyright © 2017年 haranicle. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    enum State {
        case splash
        case home
        case screenLock
        case termsOfService
    }

    private var currentViewController: UIViewController?

    func switchState(to state: State) {
        if let cvc = currentViewController {
            cvc.willMove(toParentViewController: nil)
            cvc.view.removeFromSuperview()
            cvc.removeFromParentViewController()
        }
        switch state {
        case .splash:
            currentViewController = SplashViewController()
        case .home:
            currentViewController = homeNavigationViewController
        case .screenLock:
            currentViewController = ScreenLockViewController()
        case .termsOfService:
            currentViewController = TermsOfServiceViewController()
        }
        addChildViewController(currentViewController!)
        view.addSubview(currentViewController!.view)
        currentViewController!.didMove(toParentViewController: self)
    }

    let homeNavigationViewController = UINavigationController(rootViewController: HomeViewController())
}

class SplashViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
}
class NewbieViewController: UIViewController {}
class HomeViewController: UIViewController {}
class ScreenLockViewController: UIViewController {}
class TermsOfServiceViewController: UIViewController {}

class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}
class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}

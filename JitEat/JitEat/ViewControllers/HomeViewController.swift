//
//  ViewController.swift
//  JitEat
//
//  Created by Marek Przybolewski on 19/12/2018.
//  Copyright © 2018 Marek Przybolewski. All rights reserved.
//

import UIKit
import RxSwift
import MaterialComponents

class HomeViewController: UIViewController {
    
    @IBOutlet weak var SignalButton: MDCButton!
    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        SignalButton.accessibilityLabel = Constants.signalButtonText
    }
    
    override func loadView() {
        super.loadView()
        
        SignalButton.setTitle(Constants.signalButtonText, for: .normal)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func SignalButtonClicked(_ sender: Any) {
        ApiClient.getPosts(userId: 1)
            .observeOn(MainScheduler.instance)
            .subscribe(onNext: { postsList in
                print("List of posts:", postsList)
            }, onError: { error in
                switch error {
                case Constants.ApiError.conflict:
                    print("Conflict error")
                case Constants.ApiError.forbidden:
                    print("Forbidden error")
                case Constants.ApiError.notFound:
                    print("Not found error")
                default:
                    print("Unknown error:", error)
                }
            })
            .disposed(by: disposeBag)
    }
}


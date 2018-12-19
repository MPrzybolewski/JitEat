//
//  ViewController.swift
//  JitEat
//
//  Created by Marek Przybolewski on 19/12/2018.
//  Copyright © 2018 Marek Przybolewski. All rights reserved.
//

import UIKit
import RxSwift

class HomeViewController: UIViewController {
    
    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func SignalButton(_ sender: Any) {
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


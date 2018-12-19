//
//  Post.swift
//  JitEat
//
//  Created by Marek Przybolewski on 19/12/2018.
//  Copyright © 2018 Marek Przybolewski. All rights reserved.
//

struct Post: Codable {
    let id: Int
    let title: String
    let body: String
    let userId: Int
}

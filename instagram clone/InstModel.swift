//
//  InstModel.swift
//  instagram clone
//
//  Created by Majid Osman on 2018-11-22.
//  Copyright © 2018 Majid Osman. All rights reserved.
//

import Foundation

struct Post {
    
    
    let imageUrl: String
    
    init(imageUrl: String) {
        self.imageUrl = imageUrl
    }
}

struct User {
    let userName: String
    let userImageName: String
    let postCount: Int
    
    init(userName: String, userImageName: String, postCount: Int) {
        self.userName = userName
        self.userImageName = userImageName
        self.postCount = postCount
    }
}

//
//  PorfileController.swift
//  instagram clone
//
//  Created by Majid Osman on 2018-11-21.
//  Copyright © 2018 Majid Osman. All rights reserved.
//

import LBTAComponents

class PorfileController : DatasourceController {
    
    let userPorfileDatasourceController =  UserPorfileDatasourceController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = UIColor(r: 241, g: 242, b: 246, a: 1.0)
        self.datasource = userPorfileDatasourceController
        
    userPorfileDatasourceController.fetchpost()
    }
}


class UserPorfileDatasourceController: Datasource {
    
    var posts = [Posts]()
    
    override func numberOfItems(_ section: Int) -> Int {
        return posts.count
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return[UserPorfile.self]
    }
    
    fileprivate func fetchpost(){
        for i in 1...17 {
        let post = Posts(imagename: "IMG_0227\(i)")
        posts.append(post)
        }
    }
    
}



class UserPorfile: DatasourceCell{
    
    override func setupViews() {
        super.setupViews()
        backgroundColor = .red
    }
}
struct Posts {
    let imagename : String
    
    init(imagename: String) {
    self.imagename = imagename
    }
}

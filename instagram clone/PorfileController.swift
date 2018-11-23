//
//  PorfileController.swift
//  instagram clone
//
//  Created by Majid Osman on 2018-11-22.
//  Copyright © 2018 Majid Osman. All rights reserved.
//

import LBTAComponents







class UserPorfileController: DatasourceController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    let userPorfileDatasource = UserPorfileDatasource()
        
        collectionView.backgroundColor = .white
        
        self.datasource = userPorfileDatasource
        
        userPorfileDatasource.fetchUserData(in : self )
    }
}
  var posts = [Post]()

class UserPorfileDatasource: Datasource {
    override func numberOfItems(_ section: Int) -> Int {
        return posts.count
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return posts[indexPath.item]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserPorfileDatasourceCell.self]
    }
    
    fileprivate func fetchUserData(in collectionViewController: DatasourceController){
        for i in 1...8{
        let post = Post(imageName: "image1\(i)")
        posts.append(post)
        }
        collectionViewController.collectionView?.reloadData()
    }
}

class UserPorfileDatasourceCell : DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            guard let post = datasourceItem as? Post else  {return}
            ImageView.image = UIImage(named: post.imageName)
        }
    }
    
    let ImageView : UIImageView = {
    let iv = UIImageView()
    iv.contentMode = .scaleAspectFill
       return iv
    }()
    
    
    override func setupViews() {
        super.setupViews()
        self.addSubview(ImageView)
        
        ImageView.fillSuperview()
    }
}

struct Post {
    var imageName = String()
    init(imageName: String) {
    self.imageName = imageName
    }
}

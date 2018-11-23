//
//  UserProfileDatasourceCells.swift
//  instagram clone
//
//  Created by Majid Osman on 2018-11-22.
//  Copyright © 2018 Majid Osman. All rights reserved.
//

import LBTAComponents

class UserProfileDatasourceCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            guard let post = datasourceItem as? Post else { return }
            //      imageView.image = UIImage(named: post.imageName)
            imageView.loadImage(urlString: post.imageUrl) {
                // stop animating the activity
                self.activityIndicatorView.stopAnimating()
            }
        }
    }
    
    //  let imageView: UIImageView = {
    //    let iv = UIImageView()
    //    iv.contentMode = .scaleAspectFill
    //    return iv
    //  }()
    
    let imageView: CachedImageView = {
        let iv = CachedImageView()
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    let activityIndicatorView: UIActivityIndicatorView = {
        let aiv = UIActivityIndicatorView()
        aiv.startAnimating()
        return aiv
    }()
    
    override func setupViews() {
        super.setupViews()
        backgroundColor = .lightGray
        
        addSubview(imageView)
        imageView.fillSuperview()
        
        addSubview(activityIndicatorView)
        activityIndicatorView.fillSuperview()
    }
}

class UserProfileHeaderDatasourceCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            guard let user = datasourceItem as? User else { return }
            profileImageView.image = UIImage(named: user.userImageName)
            NameLabel.text = user.userName
            PostsLabel.text = "\(user.postCount) posts"
        }
    }
    
    let profileImageWidth: CGFloat = 60
    
    lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        //    imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = profileImageWidth / 2
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        //    imageView.backgroundColor = .lightGray
        return imageView
    }()
    
    let NameLabel :UILabel = {
        let namelabel = UILabel()
        namelabel.font = UIFont.boldSystemFont(ofSize: 16)
        namelabel.text = "Company Ceo"
        
        return namelabel
    }()
    
    let WebLabel :UILabel = {
        let weblabel = UILabel()
        weblabel.font = UIFont.boldSystemFont(ofSize: 14)
        weblabel.text = "Website"
        weblabel.textColor = UIColor(r: 131, g: 149, b: 167)
        return weblabel
    }()
    
    let Website :UILabel = {
        let weblabel = UILabel()
        weblabel.font = UIFont.boldSystemFont(ofSize: 13)
        weblabel.text = "www.Hackathon.com/code/backpack"
        weblabel.textColor = UIColor(r: 55, g: 66, b: 250)
        return weblabel
    }()
    
    let PostsNumbers :UILabel = {
        let postsNumber = UILabel()
        postsNumber.font = UIFont.boldSystemFont(ofSize: 25)
        postsNumber.text = "360"
        
        return postsNumber
    }()
    
    let FollowersNumbers :UILabel = {
        let followersNumber = UILabel()
        followersNumber.font = UIFont.boldSystemFont(ofSize: 25)
        followersNumber.text = "3M"
        followersNumber.textColor = .green
        return followersNumber
    }()
    
    let FollowingNumbers :UILabel = {
        let followingNumber = UILabel()
        followingNumber.font = UIFont.boldSystemFont(ofSize: 25)
        followingNumber.text = "0"
        return followingNumber
    }()
    
    let PostsLabel :UILabel = {
        let postsLabel = UILabel()
        postsLabel.font = UIFont.boldSystemFont(ofSize: 10)
        postsLabel.text = "Posts"
        postsLabel.textColor = UIColor(r: 131, g: 149, b: 167)
        return postsLabel
    }()
    
    let FollowersLabel :UILabel = {
        let followersLabel = UILabel()
        followersLabel.font = UIFont.boldSystemFont(ofSize: 10)
        followersLabel.text = "Followers"
        followersLabel.textColor = UIColor(r: 131, g: 149, b: 167)
        return followersLabel
    }()
    
    let FollowingLabel :UILabel = {
        let followingLabel = UILabel()
        followingLabel.font = UIFont.boldSystemFont(ofSize: 10)
        followingLabel.text = "Following"
        followingLabel.textColor = UIColor(r: 131, g: 149, b: 167)
        return followingLabel
    }()
    
    lazy var PromoteButton : UIButton = {
        let promotbutton = UIButton()
        promotbutton.backgroundColor = UIColor(r: 255, g: 255, b: 255)
        promotbutton.setTitle("Promote ", for: .normal)
        promotbutton.setTitleColor(UIColor.black, for: .normal)
        //promotbutton.addTarget(<#T##target: Any?##Any?#>, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
        return promotbutton
    }()
    
    
    
    lazy var EditPorfileButton : UIButton = {
        let editporfile = UIButton()
        editporfile.backgroundColor = UIColor(r: 255, g: 255, b: 255)
        editporfile.setTitle("Edit Porfile ", for: .normal)
        editporfile.setTitleColor(UIColor.black, for: .normal)
        //promotbutton.addTarget(<#T##target: Any?##Any?#>, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
        return editporfile
    }()
    
    lazy var SettingsButton : UIButton = {
        let settingButton = UIButton()
        settingButton.backgroundColor = UIColor(r: 255, g: 255, b: 255)
        settingButton.setImage(UIImage(named: "settings"), for: .normal )
        settingButton.setTitleColor(UIColor.black, for: .normal)
        //promotbutton.addTarget(<#T##target: Any?##Any?#>, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
        return settingButton
    }()
    
    override func setupViews() {
        super.setupViews()
        
        self.addSubview(profileImageView)
        self.addSubview(NameLabel)
        self.addSubview(WebLabel)
        self.addSubview(Website)
        
        profileImageView.anchor(self.safeAreaLayoutGuide.topAnchor, left: self.safeAreaLayoutGuide.leftAnchor, bottom: nil, right: nil, topConstant: 16, leftConstant: 16, bottomConstant: 0, rightConstant: 0, widthConstant: profileImageWidth, heightConstant: profileImageWidth)
        
        NameLabel.anchor(profileImageView.topAnchor, left:self.safeAreaLayoutGuide.leftAnchor , bottom: nil, right: nil, topConstant: 10, leftConstant: 10, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 0)
        
        WebLabel.anchor(NameLabel.bottomAnchor, left: self.safeAreaLayoutGuide.leftAnchor, bottom: nil , right: nil, topConstant: 7, leftConstant: 10, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        Website.anchor(WebLabel.bottomAnchor, left: self.safeAreaLayoutGuide.leftAnchor, bottom: nil , right: nil, topConstant: 20, leftConstant: 10, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        
        PostsNumbers.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: nil , topConstant: 10, leftConstant: 80, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        FollowersNumbers.anchor(profileImageView.topAnchor, left: PostsNumbers.rightAnchor, bottom: nil, right: nil , topConstant: 10, leftConstant: 50, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        FollowingNumbers.anchor(profileImageView.topAnchor, left: FollowersNumbers.rightAnchor, bottom: nil, right: nil , topConstant: 10, leftConstant: 50, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        self.addSubview(PostsLabel)
        self.addSubview(FollowersLabel)
        self.addSubview(FollowingLabel)
        
        PostsLabel.anchor(PostsNumbers.bottomAnchor, left: profileImageView.rightAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 81, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        FollowersLabel.anchor(FollowersNumbers.bottomAnchor, left: PostsLabel.rightAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 67, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        FollowingLabel.anchor(FollowingNumbers.bottomAnchor, left: FollowersNumbers.rightAnchor, bottom: nil, right: self.safeAreaLayoutGuide.rightAnchor, topConstant: 0, leftConstant: 40, bottomConstant: 0, rightConstant: 10, widthConstant: 0, heightConstant: 0)
        
        self.addSubview(PromoteButton)
        self.addSubview(EditPorfileButton)
        self.addSubview(SettingsButton)
        PromoteButton.anchor(PostsLabel.bottomAnchor, left: profileImageView.rightAnchor, bottom: nil, right: nil, topConstant: 10, leftConstant: 10, bottomConstant: 0, rightConstant: 0, widthConstant: 60, heightConstant: 30)
        
        EditPorfileButton.anchor(FollowersLabel.bottomAnchor, left: PromoteButton.rightAnchor, bottom: nil, right: nil, topConstant: 10, leftConstant: 7, bottomConstant: 0, rightConstant: 0, widthConstant: 60, heightConstant: 30)
        
        SettingsButton.anchor(FollowingLabel.bottomAnchor, left: EditPorfileButton.rightAnchor, bottom: nil, right: nil, topConstant: 10, leftConstant: 3, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 30)
    }
    
}

class UserProfileFooterDatasourceCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            guard let user = datasourceItem as? User else { return }
            copyrightLabel.text = "\(user.userName) © 2018"
        }
    }
    
    let copyrightLabel: UILabel = {
        let label = UILabel()
        //    label.text = "145 posts"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor.lightGray
        //    label.backgroundColor = .lightGray
        label.textAlignment = .center
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(copyrightLabel)
        copyrightLabel.fillSuperview()
    }
}

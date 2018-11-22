//
//  ViewController.swift
//  instagram clone
//
//  Created by Majid Osman on 2018-11-20.
//  Copyright © 2018 Majid Osman. All rights reserved.
//

import UIKit
import LBTAComponents
class ViewController: UIViewController {

    lazy var UserImageView : UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "pexels-photo-590798")
    imageView.layer.cornerRadius = 90 / 2
    imageView.clipsToBounds = true
    imageView.contentMode = .scaleAspectFill
    imageView.backgroundColor = .red
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(r: 241, g: 242, b: 246, a: 1.0)
        SetupView()
        
    }
    
    
    func SetupView() {
        view.addSubview(UserImageView)
        view.addSubview(NameLabel)
        view.addSubview(WebLabel)
        view.addSubview(Website)
       
        UserImageView.anchor(view.safeAreaLayoutGuide.topAnchor, left: view.safeAreaLayoutGuide.leftAnchor, bottom:nil, right: nil, topConstant: 7, leftConstant: 7, bottomConstant: 0, rightConstant: 0, widthConstant: 90, heightConstant: 90)
        
        NameLabel.anchor(UserImageView.bottomAnchor, left:view.safeAreaLayoutGuide.leftAnchor , bottom: nil, right: nil, topConstant: 10, leftConstant: 10, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 0)
        
        WebLabel.anchor(NameLabel.bottomAnchor, left: view.safeAreaLayoutGuide.leftAnchor, bottom: nil , right: nil, topConstant: 7, leftConstant: 10, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        Website.anchor(WebLabel.bottomAnchor, left: view.safeAreaLayoutGuide.leftAnchor, bottom: nil , right: nil, topConstant: 20, leftConstant: 10, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
         NumbersLabel()
    }
    
    
    func NumbersLabel() {
        view.addSubview(PostsNumbers)
        view.addSubview(FollowersNumbers)
        view.addSubview(FollowingNumbers)
      
        PostsNumbers.anchor(UserImageView.topAnchor, left: UserImageView.rightAnchor, bottom: nil, right: nil , topConstant: 10, leftConstant: 80, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        FollowersNumbers.anchor(UserImageView.topAnchor, left: PostsNumbers.rightAnchor, bottom: nil, right: nil , topConstant: 10, leftConstant: 50, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        FollowingNumbers.anchor(UserImageView.topAnchor, left: FollowersNumbers.rightAnchor, bottom: nil, right: nil , topConstant: 10, leftConstant: 50, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        view.addSubview(PostsLabel)
        view.addSubview(FollowersLabel)
        view.addSubview(FollowingLabel)
        
        PostsLabel.anchor(PostsNumbers.bottomAnchor, left: UserImageView.rightAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 81, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        FollowersLabel.anchor(FollowersNumbers.bottomAnchor, left: PostsLabel.rightAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 67, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
         FollowingLabel.anchor(FollowingNumbers.bottomAnchor, left: FollowersNumbers.rightAnchor, bottom: nil, right: view.safeAreaLayoutGuide.rightAnchor, topConstant: 0, leftConstant: 40, bottomConstant: 0, rightConstant: 10, widthConstant: 0, heightConstant: 0)
        
         view.addSubview(PromoteButton)
         view.addSubview(EditPorfileButton)
         view.addSubview(SettingsButton)
         PromoteButton.anchor(PostsLabel.bottomAnchor, left: UserImageView.rightAnchor, bottom: nil, right: nil, topConstant: 10, leftConstant: 10, bottomConstant: 0, rightConstant: 0, widthConstant: 150, heightConstant: 30)
        
        EditPorfileButton.anchor(FollowersLabel.bottomAnchor, left: PromoteButton.rightAnchor, bottom: nil, right: nil, topConstant: 10, leftConstant: 7, bottomConstant: 0, rightConstant: 0, widthConstant: 100, heightConstant: 30)
        
        SettingsButton.anchor(FollowingLabel.bottomAnchor, left: EditPorfileButton.rightAnchor, bottom: nil, right: nil, topConstant: 10, leftConstant: 3, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 30)
    
        
    }
}


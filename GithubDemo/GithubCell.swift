//
//  GithubCell.swift
//  GithubDemo
//
//  Created by XXY on 16/2/11.
//  Copyright © 2016年 codepath. All rights reserved.
//

import UIKit

class GithubCell: UITableViewCell {

    @IBOutlet weak var projectName: UILabel!
    
    @IBOutlet weak var owner: UILabel!
    
    @IBOutlet weak var profile: UIImageView!
    
    @IBOutlet weak var stars: UILabel!
    
    @IBOutlet weak var forks: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var repo: GithubRepo!{
        didSet{
            projectName.text = repo.name
            owner.text = "by \(repo.ownerHandle)"
            stars.text = "\(repo.stars!)"
            forks.text = "\(repo.forks!)"
            descriptionLabel.text = repo.repoDescription
            profile.setImageWithURL(NSURL(string:repo.ownerAvatarURL!)!)
            
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

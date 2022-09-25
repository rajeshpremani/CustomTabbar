//
//  HomeTableViewCell.swift
//  CustomTabbar
//
//  Created by Rajesh Kumar on 24/09/2022.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var forwordImageLogo: UIImageView!
    @IBOutlet weak var imageType: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setView()
    }


    func setView(){
        containerView.layer.cornerRadius = 12
        containerView.clipsToBounds = true
    }
    
    func configure(data: HomeCellDataModel){
        titleLabel.text = data.title
        imageType.image = UIImage(named: data.mainImage)
        
        let frontColor:UIColor? = data.type == .secondary ? .primaryColor : .secondaryColor
        
        if let frontColor = frontColor {
            titleLabel.textColor = frontColor
            forwordImageLogo.tintColor = frontColor
        }
        containerView.backgroundColor = data.type == .secondary ? .secondaryColor : .primaryColor
        
    }
}



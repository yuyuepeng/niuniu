//
//  CollectCell.swift
//  swiftProject
//
//  Created by 扶摇先生 on 2018/10/12.
//  Copyright © 2018年 玉岳鹏. All rights reserved.
//

import UIKit

class CollectCell: UITableViewCell {
    
    lazy var goodImage: UIImageView = {
        let goodImage1 = UIImageView.init(frame: CGRect.init(x: 15, y: 15, width: 40, height: 40))
        return goodImage1
    }()
    lazy var shoucangButton: UIButton = {
        let shoucangBtn = UIButton.init(frame: CGRect.init(x: YYScreenWidth - 45, y: 15, width: 30, height: 30))
        shoucangBtn .addTarget(self, action: #selector(shoucangBtnClick(btn:)), for: UIControl.Event.touchUpInside)
        shoucangBtn .setImage(UIImage.init(named: "icon_collectSelect"), for: UIControl.State.selected)
        shoucangBtn.setImage(UIImage.init(named: "icon_collectNor"), for: UIControl.State.normal)
        shoucangBtn.isSelected = true
        return shoucangBtn
    }()
    lazy var brandLabel: UILabel = {
        let brandLabel = UILabel.init(frame: CGRect.init(x: 55 + 29, y: 13.5, width: YYScreenWidth - 84, height: 20))
        brandLabel.textAlignment = NSTextAlignment.left
        brandLabel.font = UIFont.systemFont(ofSize: 13)
        brandLabel.textColor = UIColor.black
        brandLabel.text = "Gucci Gucci Prada"
        return brandLabel;
    }()
    lazy var timeLabel: UILabel = {
        let timeLabel = UILabel.init(frame: CGRect.init(x: 55 + 29 , y: 60, width: YYScreenWidth - 84, height: 20))
        timeLabel.textAlignment = NSTextAlignment.left
        timeLabel.font = UIFont.systemFont(ofSize: 13)
        timeLabel.textColor = UIColor.black
        timeLabel.text = "收藏时间：2017-10-10"
        return timeLabel
    }()
    
    lazy var nameLabel: UILabel = {
        let nameLabel = UILabel.init(frame: CGRect.init(x: 55 + 29, y: 38.5, width: YYScreenWidth - 84 - 25, height: 20))
        nameLabel.textAlignment = NSTextAlignment.left
        nameLabel.text = "蓝色小羊皮翻盖式手提包"
        nameLabel.textColor = UIColor.black
        nameLabel.font = UIFont.systemFont(ofSize: 13)
        return nameLabel
    }()
    lazy var priceLabel: UILabel = {
        let priceLabel = UILabel.init(frame: CGRect.init(x: 55 + 29, y: 88 , width: YYScreenWidth - 84 - 25, height: 20))
        priceLabel.text = "￥12,500"
        priceLabel.textAlignment = NSTextAlignment.left
        priceLabel.font = UIFont.boldSystemFont(ofSize: 13)
        return priceLabel
    }()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self .addSubview(self.goodImage)
    
        self .addSubview(self.shoucangButton)
        self .addSubview(self.brandLabel)
        self .addSubview(self.timeLabel)
        self .addSubview(self.nameLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc func shoucangBtnClick(btn:UIButton) -> Void {
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

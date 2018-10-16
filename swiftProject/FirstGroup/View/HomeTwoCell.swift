//
//  HomeTwoCell.swift
//  swiftProject
//
//  Created by 扶摇先生 on 2018/10/10.
//  Copyright © 2018年 玉岳鹏. All rights reserved.
//

import UIKit

class HomeTwoCell: UITableViewCell {

    
    lazy var backImage: UIImageView = {
        var backImage = UIImageView.init(frame: CGRect.init(x: 0, y: 0, width: YYScreenWidth, height: 150))
        backImage.backgroundColor = UIColor.white
        return backImage
    }()
    lazy var titleLabel: UILabel = {
        var titleLabel = UILabel.init(frame: CGRect.init(x: 0, y: 60, width: YYScreenWidth, height: 30))
        titleLabel.text = "安丽娜是个小狗狗"
        titleLabel.textAlignment = NSTextAlignment.center
        titleLabel.textColor = UIColor.black
        titleLabel.font = UIFont.systemFont(ofSize: 12)
        return titleLabel
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.createViews()
    }
    func createViews() -> Void {
        self.addSubview(self.backImage)
        self.addSubview(self.titleLabel)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

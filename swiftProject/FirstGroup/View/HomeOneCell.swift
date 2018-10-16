//
//  HomeOneCell.swift
//  swiftProject
//
//  Created by 玉岳鹏 on 2018/10/10.
//  Copyright © 2018年 玉岳鹏. All rights reserved.
//

import UIKit

class HomeOneCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.createViews()
    }
    lazy var backimage: UIImageView = {
        var backimage = UIImageView.init(frame: CGRect.init(x: 0, y: 0, width: YYScreenWidth, height: 100));
        backimage.backgroundColor = UIColor.white
        return backimage
    }()
    lazy var titleLabel: UILabel = {
        var titleLabel = UILabel.init(frame: CGRect.init(x: 0, y: 35, width: YYScreenWidth, height: 30));
        titleLabel.textColor = UIColor.black
        titleLabel.textAlignment = NSTextAlignment.center
        titleLabel.font = UIFont.systemFont(ofSize: 12)
        titleLabel.text = "玉岳鹏是一个小狗狗"
        return titleLabel
    }()
    func createViews() -> Void {
        addSubview(backimage);
        self.backimage.addSubview(self.titleLabel);
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

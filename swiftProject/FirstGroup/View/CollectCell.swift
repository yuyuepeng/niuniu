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
        var goodImage1 = UIImageView.init(frame: CGRect.init(x: 15, y: 15, width: 40, height: 40))
        return goodImage1
    }()
    lazy var shoucangButton: UIButton = {
        var shoucangBtn = UIButton.init(frame: CGRect.init(x: YYScreenWidth - 45, y: 15, width: 30, height: 30))
        shoucangBtn .addTarget(self, action: #selector(shoucangBtnClick(btn:)), for: UIControl.Event.touchUpInside)
        shoucangBtn .setImage(UIImage.init(named: "icon_collectSelect"), for: UIControl.State.selected)
        shoucangBtn.setImage(UIImage.init(named: "icon_collectNor"), for: UIControl.State.normal)
        shoucangBtn.isSelected = true
        return shoucangBtn
    }()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self .addSubview(self.goodImage)
    
        self .addSubview(self.shoucangButton)
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

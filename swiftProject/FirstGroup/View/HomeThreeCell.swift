//
//  HomeThreeCell.swift
//  swiftProject
//
//  Created by 扶摇先生 on 2018/10/10.
//  Copyright © 2018年 玉岳鹏. All rights reserved.
//

import UIKit

class HomeThreeCell: UITableViewCell {
    lazy var collectionView: UICollectionView = {
        var collectionView = UICollectionView.init(frame: CGRect.init(x: 0, y: 0, width: YYScreenWidth, height: 100), collectionViewLayout: self.createLayout())
        return collectionView
    }()
    func createLayout() -> UICollectionViewFlowLayout {
        let flowLayout = UICollectionViewFlowLayout.init()
        flowLayout.sectionInset = UIEdgeInsets.init(top: 0, left: 15, bottom: 0, right: 15)
        flowLayout.itemSize = CGSize.init(width: 80, height: 80)
        return flowLayout
        
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    func createViews() -> Void {
        
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

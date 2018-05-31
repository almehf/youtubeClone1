//
//  TrendingCell.swift
//  youtube
//
//  Created by Fahad Almehawas on 9/15/17.
//  Copyright © 2017 Fahad almehawas. All rights reserved.
//

import UIKit

class TrendingCell: FeedCell {

    override func fetchVideos() {
        ApiService.sharedInstance.fetchTrendingFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }

}

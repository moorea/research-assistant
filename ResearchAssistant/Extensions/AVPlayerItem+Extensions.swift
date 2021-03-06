//
//  AVPlayerItem+Extensions.swift
//  VideoPlayer
//
//  Created by Gesen on 2019/7/7.
//  Modified by Andrew Moore on 2019/11/11.
//  Copyright © 2019 Gesen. All rights reserved.
//

import AVFoundation

public extension AVPlayerItem {
    
    var currentDuration: Double {
        Double(CMTimeGetSeconds(currentTime()))
    }
    
    var playProgress: Double {
        currentDuration / totalDuration
    }
    
    var totalDuration: Double {
        Double(CMTimeGetSeconds(asset.duration))
    }
}

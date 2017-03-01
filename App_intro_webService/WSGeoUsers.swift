//
//  WSGeoUsers.swift
//  App_intro_webService
//
//  Created by Jorge Moñiz on 1/3/17.
//  Copyright © 2017 jorgemoniz. All rights reserved.
//

import UIKit

class WSGeoUsers: NSObject {
    
    var lat : String?
    var lng : String?
    
    init(pLat : String, PLng : String) {
        self.lat = pLat
        self.lng = PLng
        super.init()
    }

}

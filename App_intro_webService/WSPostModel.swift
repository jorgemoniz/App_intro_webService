//
//  WSPostModel.swift
//  App_intro_webService
//
//  Created by Jorge Moñiz on 27/2/17.
//  Copyright © 2017 jorgemoniz. All rights reserved.
//

import UIKit

class WSPostModel: NSObject {
    
    // Nos copiamos el JSON y declaramos las variables.
    
    var userId : Int?
    var id : Int?
    var title : String?
    var body : String?
    
    //Constructor
    init(pUserId : Int, pId : Int, pTitle : String, pBody : String) {
        self.userId = pUserId
        self.id = pId
        self.title = pTitle
        self.body = pBody
        super.init()
    }

}

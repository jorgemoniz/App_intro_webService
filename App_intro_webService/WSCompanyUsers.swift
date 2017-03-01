//
//  WSCompanyUsers.swift
//  App_intro_webService
//
//  Created by Jorge Moñiz on 1/3/17.
//  Copyright © 2017 jorgemoniz. All rights reserved.
//

import UIKit

class WSCompanyUsers: NSObject {
    
    var name : String?
    var catchPhrase : String?
    var bs : String?
    
    init(pName : String, pCatchPhrase : String, pBs : String) {
        
        self.name = pName
        self.catchPhrase = pCatchPhrase
        self.bs = pBs
        super.init()
        
    }

}

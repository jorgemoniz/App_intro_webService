//
//  WSParserDataUno.swift
//  App_intro_webService
//
//  Created by Jorge Moñiz on 27/2/17.
//  Copyright © 2017 jorgemoniz. All rights reserved.
//

import UIKit
import SwiftyJSON

class WSParserDataUno: NSObject {
    
    func getPostParserModel(_ dataFromNetworks : NSData) -> [WSPostModel] {
        var arrayPostModel = [WSPostModel]()
        let jsonLegible = JSON(data: dataFromNetworks as Data, options: JSONSerialization.ReadingOptions.mutableContainers, error: nil)
        
        for item in 0..<jsonLegible.count{
            let postModel = WSPostModel(pUserId: jsonLegible[item]["userId"].int!,
                                        pId: jsonLegible[item]["id"].int!,
                                        pTitle: jsonLegible[item]["title"].string!,
                                        pBody: jsonLegible[item]["body"].string!)
            arrayPostModel.append(postModel)
        }
        return arrayPostModel
    }
}

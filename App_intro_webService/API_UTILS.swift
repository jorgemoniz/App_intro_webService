//
//  API_UTILS.swift
//  App_intro_webService
//
//  Created by Jorge Moñiz on 27/2/17.
//  Copyright © 2017 jorgemoniz. All rights reserved.
//

import Foundation

let CONSTANTES = Constantes()

struct Constantes {
    let BASE_URL = Base_Url()
}

struct Base_Url {
    let BASE_URL_POST =  "https://jsonplaceholder.typicode.com/posts"
    let BASE_URL_USERS = "https://jsonplaceholder.typicode.com/users"
}

//
//  WSUsersCustomCell.swift
//  App_intro_webService
//
//  Created by Jorge Moñiz on 1/3/17.
//  Copyright © 2017 jorgemoniz. All rights reserved.
//

import UIKit

class WSUsersCustomCell: UITableViewCell {
    
    //MARK: - IBOutlets
    @IBOutlet weak var myIdLBL: UILabel!
    @IBOutlet weak var myNombreLBL: UILabel!
    @IBOutlet weak var myUsernameLBL: UILabel!
    @IBOutlet weak var myEmailLBL: UILabel!
    @IBOutlet weak var myCalleLBL: UILabel!
    @IBOutlet weak var myNumeroLBL: UILabel!
    @IBOutlet weak var myCiudadLBL: UILabel!
    @IBOutlet weak var myCodigoPostalLBL: UILabel!
    @IBOutlet weak var myLatitudLBL: UILabel!
    @IBOutlet weak var myLongitudLBL: UILabel!
    @IBOutlet weak var myMovilLBL: UILabel!
    @IBOutlet weak var myWebsiteLBL: UILabel!
    @IBOutlet weak var myNombreEmpresaLBL: UILabel!
    @IBOutlet weak var myFrasePromocionalLBL: UILabel!
    @IBOutlet weak var myBsLBL: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  WSListaUsersTableViewController.swift
//  App_intro_webService
//
//  Created by Jorge Moñiz on 1/3/17.
//  Copyright © 2017 jorgemoniz. All rights reserved.
//

import UIKit

class WSListaUsersTableViewController: UITableViewController {
    
    var arrayUsers : [WSUsersModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        arrayUsers = APIManagerData.shared.getUsersApi()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayUsers.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customUserCell = tableView.dequeueReusableCell(withIdentifier: "UsersCustomCell", for: indexPath) as! WSUsersCustomCell

        // Configure the cell...
        
        let userModel = arrayUsers[indexPath.row]
        
        customUserCell.myIdLBL.text = "\(userModel.id!)"
        customUserCell.myNombreLBL.text = userModel.name
        customUserCell.myUsernameLBL.text = userModel.username
        customUserCell.myEmailLBL.text = userModel.email
        customUserCell.myCalleLBL.text = userModel.address?.street
        customUserCell.myNumeroLBL.text = userModel.address?.suite
        customUserCell.myCiudadLBL.text = userModel.address?.city
        customUserCell.myCodigoPostalLBL.text = userModel.address?.zipcode
        customUserCell.myLatitudLBL.text = userModel.address?.geo?.lat
        customUserCell.myLongitudLBL.text = userModel.address?.geo?.lng
        customUserCell.myMovilLBL.text = userModel.phone
        customUserCell.myWebsiteLBL.text = userModel.website
        customUserCell.myNombreEmpresaLBL.text = userModel.company?.name
        customUserCell.myFrasePromocionalLBL.text = userModel.company?.catchPhrase
        customUserCell.myBsLBL.text = userModel.company?.bs
        

        return customUserCell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

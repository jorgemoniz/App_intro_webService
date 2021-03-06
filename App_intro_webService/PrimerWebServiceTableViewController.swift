//
//  PrimerWebServiceTableViewController.swift
//  App_intro_webService
//
//  Created by Jorge Moñiz on 27/2/17.
//  Copyright © 2017 jorgemoniz. All rights reserved.
//

import UIKit

class PrimerWebServiceTableViewController: UITableViewController {
    
    //MARK: - Variables locales
    var arrayPosts : [WSPostModel] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Alimentamos nuestro array con el singleton
        arrayPosts = APIManagerData.shared.getPostApi()
        

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
        return arrayPosts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: "DatosCustomCell", for: indexPath) as! WSDatosCustomCell

        // Configure the cell...
        let model = arrayPosts[indexPath.row]
        
        customCell.myTituloLBL.text = model.title
        customCell.myNumeroIdLBL.text = "\(model.id)"
        customCell.myIdUsuarioLBL.text = String(describing: model.userId)
        customCell.myCuerpoMensajeLBL.text = model.body

        return customCell
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

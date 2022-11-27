//
//  MoedaTableViewController.swift
//  coinJSON
//
//  Created by Student on 26/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class MoedaTableViewController: UITableViewController {
    
    var moedas = [Moedas]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        downloadJSON{
            self.tableView.reloadData()
        }

    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moedas.count
    }
    
    func downloadJSON(completed: @escaping () -> ()){
        let url = URL(string: "https://api.coincap.io/v2/assets")
        
        URLSession.shared.dataTask(with: url!)
        {
            data,response, err in
            if err == nil{
                do{
                    let baseJ = try
                        JSONDecoder().decode(Base.self, from: data!)
                        print(self.moedas.count)
                    
                    self.moedas = baseJ.data
                    DispatchQueue.main.async{
                        completed()
                    }
                }
                catch{
                    print("erro fetcinh data")
                }
            }
        }.resume()
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "moeda", for: indexPath)

        if let moedaCell = cell as? MoedaTableViewCell{
            let moeda = self.moedas[indexPath.row]
            
            moedaCell.rankLabel.text = moeda.rank
            moedaCell.moedaNomeLabel.text = moeda.name
            
            return moedaCell
        }
        
        return cell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    


}

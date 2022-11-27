//
//  MusicaTableViewController.swift
//  musicPlayer
//
//  Created by Student on 22/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class MusicaTableViewController: UITableViewController {
    
    var musicas = [Musica]()

    override func viewDidLoad() {
        super.viewDidLoad()

        musicas = MusicaDAO.getList()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicas.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "musica", for: indexPath)

            //confirar cells
        if let musicaCell = cell as? MusicaTableViewCell{
            let musica = musicas[indexPath.row]
            musicaCell.tituloMusicaLabel.text = musica.tituloMusica
            musicaCell.cantorMusicaLabel.text = musica.cantorMusica
            
            return musicaCell
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="albumSegue"{
            
            
            if let albumDestino = segue.destination as? AlbumViewController{
                
                albumDestino.musica = musicas[tableView.indexPathForSelectedRow!.row]
            
            }
            
        }
        
    }
    
    

}

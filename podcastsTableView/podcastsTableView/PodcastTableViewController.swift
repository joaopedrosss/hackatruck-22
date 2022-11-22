//
//  PodcastTableViewController.swift
//  podcastsTableView
//
//  Created by Student on 21/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class PodcastTableViewController: UITableViewController {

    var podcasts = [Podcast]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        podcasts = PodcastDAO.getList()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return podcasts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "podcast", for: indexPath)

        if let podcastCell = cell as? PodcastTableViewCell{
            let podcast = podcasts[indexPath.row]
            podcastCell.podcastEpisodiosLabel.text = podcast.episodiosPodcast
            podcastCell.podcastFotoImage.image = UIImage(named:podcast.fotoPodcast)
            podcastCell.podcastNomeLabel.text = podcast.nomePodcast
            
            return podcastCell
            
            
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

   /* https://www.hackingwithswift.com/example-code/uikit/how-to-swipe-to-delete-uitableviewcells
    */  
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
             podcasts.remove(at: indexPath.row)
             tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

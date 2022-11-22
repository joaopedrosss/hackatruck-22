//
//  File.swift
//  podcastsTableView
//
//  Created by Student on 21/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation

class Podcast{
    
    let nomePodcast: String
    let episodiosPodcast: String
    let fotoPodcast: String
    
    init(nomePodcast:String, episodiosPodcast:String, fotoPodcast: String){
        self.nomePodcast = nomePodcast
        self.episodiosPodcast = episodiosPodcast
        self.fotoPodcast = fotoPodcast
        
    }
    
}

class PodcastDAO{
    static func getList() -> [Podcast]{
        return [
            Podcast(nomePodcast:"Flow Podcast", episodiosPodcast:"45",fotoPodcast:"flow"),
            Podcast(nomePodcast:"Darknet Diaries", episodiosPodcast:"5",fotoPodcast:"darknet"),
            Podcast(nomePodcast:"Science Vs",episodiosPodcast:"425",fotoPodcast:"sciencevs")
        ]
    }
}

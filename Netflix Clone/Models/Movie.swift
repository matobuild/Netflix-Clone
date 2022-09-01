//
//  Movie.swift
//  Netflix Clone
//
//  Created by kittawat phuangsombat on 2022/9/1.
//

import Foundation

struct TrendingMoviesResponse: Codable {
    let results: [Movie]
}

struct Movie: Codable{
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
    
    
}


/*
 {
adult = 0;
"backdrop_path" = "/1DBDwevWS8OhiT3wqqlW7KGPd6m.jpg";
"genre_ids" =             (
 53
);
id = 985939;
"media_type" = movie;
"original_language" = en;
"original_title" = Fall;
overview = "For best friends Becky and Hunter, life is all about conquering fears and pushing limits. But after they climb 2,000 feet to the top of a remote, abandoned radio tower, they find themselves stranded with no way down. Now Becky and Hunter\U2019s expert climbing skills will be put to the ultimate test as they desperately fight to survive the elements, a lack of supplies, and vertigo-inducing heights.";
popularity = "232.713";
"poster_path" = "/v28T5F1IygM8vXWZIycfNEm3xcL.jpg";
"release_date" = "2022-08-11";
title = Fall;
video = 0;
"vote_average" = "6.85";
"vote_count" = 20;
},
*/

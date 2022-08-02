//
//  Photos.swift
//  Flickr App
//
//  Created by Umithan  on 2.08.2022.
//

import Foundation

struct Photos: Codable {
    let page, pages, perpage, total: Int
    let photo: [PhotoElement]
}

//
//  ListingFilters.swift
//  eatsy
//
//  Created by Deepak Katuwal on 25/05/21.
//

import Foundation

class ListingFilters: ObservableObject {
    @Published var veg: Bool = false
    @Published var priceRange: [String] = []
    @Published var deliveryFee = 0
}

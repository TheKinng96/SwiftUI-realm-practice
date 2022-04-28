//
//  RealmHelper.swift
//  SwiftUI-realm practicw
//
//  Created by Feng Yuan Yap on 2022/04/28.
//

import Foundation
import RealmSwift

class RealmHelper {
  static func inMemoryRealm() -> Realm {
    var conf = Realm.Configuration.defaultConfiguration
    conf.inMemoryIdentifier = "preview"
    let realm = try! Realm(configuration: conf)
    return realm
  }
  
  static func realmWithItems() -> Realm {
    let realm = inMemoryRealm()
    
    let allItems = realm.objects(Item.self)
    
    if allItems.count == 0 {
      try? realm.write({
        realm.add(Item())
        realm.add(Item())
      })
    }
    return realm
  }
}

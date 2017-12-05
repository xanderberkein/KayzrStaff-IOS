//
//  TeamInfoViewController.swift
//  KayzrStaff
//
//  Created by Jens Leirens on 05/12/2017.
//  Copyright © 2017 Jens Leirens. All rights reserved.
//

import UIKit
import KayzrStaff_Shared

class TeamInfoViewController : UITableViewController {
    @IBOutlet weak var teamTable : UITableView!
    
    var team : [User] = [User(userId: 10, username: "Mafken", fullname: "Jens Leirens", password: "123", phonenumber: "0471626404",
                              role: User.Role.Mod),
                         User(userId: 11, username: "Maus", fullname: "Mauseken van iets", password: "123", phonenumber: "0471626404",
                              role: User.Role.Mod),
                         User(userId: 10, username: "Dierke9", fullname: "dieter dierkes", password: "123", phonenumber: "0471626404",
                              role: User.Role.Mod),
                         User(userId: 10, username: "XBio", fullname: "Marnik Van nenlanden", password: "123", phonenumber: "0471626404",
                              role: User.Role.Mod),
                         User(userId: 10, username: "yannickverc", fullname: "Yannick Vercauteren", password: "123", phonenumber: "0471626404", role: User.Role.CM),
                         User(userId: 10, username: "Vancha_March", fullname: "Evert Pauwels", password: "123", phonenumber: "0471626404", role: User.Role.CM),
                         User(userId: 10, username: "RenoNiiChan", fullname: "Reno Schoutteet", password: "123", phonenumber: "0471626404", role: User.Role.CM),
                         User(userId: 10, username: "Zibri7", fullname: "Ewoud Van de Rostyne", password: "123", phonenumber: "0471626404", role: User.Role.CM)]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return team.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "teamCell", for: indexPath) as! TeamInfoCell
        cell.user = team[indexPath.row]
        return cell
    }
    
    
}


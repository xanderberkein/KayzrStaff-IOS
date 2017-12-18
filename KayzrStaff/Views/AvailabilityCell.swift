import UIKit

import KayzrStaff_Shared
class AvailabilityCell: UITableViewCell {
    @IBOutlet weak var tournamentNameLabel: UILabel!
    @IBOutlet weak var tournamentHourLabel: UILabel!
    @IBOutlet weak var tournamentAvailable: UISwitch!
    
    var availability : Availability! {
        didSet{
            tournamentHourLabel.text = availability.hour
            tournamentAvailable.isOn =  availability.available
            
            if availability.nameShort.starts(with: "PS:") {
                tournamentNameLabel.textColor = UIColor.blue
                availability.nameShort = String(availability.nameShort.dropFirst(4))
            } else if availability.nameShort.starts(with: "Fun:") {
                tournamentNameLabel.textColor = UIColor.green
                availability.nameShort = String(availability.nameShort.dropFirst(5))
                
            } else {
                tournamentNameLabel.textColor = UIColor(red: 214, green: 214, blue: 214, alpha: 0.7)
            }
            
            tournamentNameLabel.text = availability.nameShort
        }
    }
    @IBAction func switchChanged(_ sender: Any) {
        availability.available = tournamentAvailable.isOn
    }
    
}


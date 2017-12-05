import UIKit

class AvailabilityCell: UITableViewCell {
    @IBOutlet weak var tournamentNameLabel: UILabel!
    @IBOutlet weak var tournamentHourLabel: UILabel!
    @IBOutlet weak var tournamentAvailable: UISwitch!
    
    var availability : Availability! {
        didSet{
            tournamentNameLabel.text = availability.nameShort
            tournamentHourLabel.text = availability.hour
            tournamentAvailable.isOn =  availability.available
            
        }
    }
    @IBAction func switchChanged(_ sender: Any) {
        availability.available = tournamentAvailable.isOn
    }
    
}


import UIKit
import KayzrStaff_Shared

class TournamentCell: UITableViewCell {
    
    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var startTimeLabel: UILabel!
    @IBOutlet weak var moderatorLabel: UILabel?
    
    
    var tournament: Tournament! {
        didSet{
            nameLabel.text = tournament.name
            dateLabel.text = tournament.day + " " + tournament.date
            startTimeLabel.text = "Begint om: " + tournament.hour
            
            if tournament.moderator != "" {
                moderatorLabel?.text = tournament.moderator
            }
            
            if tournament.nameShort.contains("CSGO"){
                gameImage.image = #imageLiteral(resourceName: "CSGO")
            } else if tournament.nameShort.contains("LoL"){
                gameImage.image = #imageLiteral(resourceName: "LOL")
            } else if tournament.nameShort.contains("RL") {
                gameImage.image = #imageLiteral(resourceName: "RL")
            } else if tournament.nameShort.contains("HS") {
                gameImage.image = #imageLiteral(resourceName: "HS")
            } else if tournament.nameShort.contains("FIFA") {
                gameImage.image = #imageLiteral(resourceName: "Fifa")
            }else {
                gameImage.image = #imageLiteral(resourceName: "icon")
            }
            
        }
    }
    
}


import UIKit
import KayzrStaff_Shared

class ThisWeekViewController : UITableViewController {
    @IBOutlet weak var weekDays: UITableView!
    @IBOutlet weak var amountMaandag: UILabel!
    @IBOutlet weak var amountDinsdag: UILabel!
    @IBOutlet weak var amountWoensdag: UILabel!
    @IBOutlet weak var amountDonderdag: UILabel!
    @IBOutlet weak var amountVrijdag: UILabel!
    @IBOutlet weak var amountZaterdag: UILabel!
    @IBOutlet weak var amountZondag: UILabel!
    
    var tournamentsToModerate: [Tournament] = [Tournament(id: 1, name: "Counter-strike:Global Offensive 5V5", nameShort: "CSGO 5V5",
                                                          day:"Donderdag", date: "10/2/2017", hour: "17h20", moderator: "yannickverc"),
                                               Tournament(id: 2, name: "CV League of Legends 5V5", nameShort: "LoL 5V5", day: "Woensdag", date: "10/2/2017", hour: "17h20", moderator: "Mafken"),
                                               Tournament(id: 3, name: "Rocket League 3V3", nameShort: "RL 3V3", day: "Zaterdag", date: "10/2/2017", hour: "17h20", moderator: "Mafken"),
                                               Tournament(id: 4, name: "FIFA 18 1V1", nameShort: "FIFA 1V1", day: "Zaterdag", date: "10/2/2017", hour: "17h20", moderator: "Dierke9"),
                                               Tournament(id: 5, name: "Hearthstone 2V2", nameShort: "HS 2V2", day: "Zaterdag", date: "10/2/2017", hour: "17h20", moderator: "XBio")]
    
    var amountOfTournamentsForThatDay: [String : Int] = [:]
    
    override func viewDidLoad() {
        for tournament in tournamentsToModerate {
            switch tournament.day {
            case "Maandag":
                if let amount = amountOfTournamentsForThatDay["Maandag"] {
                    amountOfTournamentsForThatDay["Maandag"] = amount + 1
                } else {
                    amountOfTournamentsForThatDay["Maandag"] = 1
                }
            case "Dinsdag":
                if let amount = amountOfTournamentsForThatDay["Dinsdag"] {
                    amountOfTournamentsForThatDay["Dinsdag"] = amount + 1
                } else {
                    amountOfTournamentsForThatDay["Dinsdag"] = 1
                }
            case "Woensdag":
                if let amount = amountOfTournamentsForThatDay["Woensdag"] {
                    amountOfTournamentsForThatDay["Woensdag"] = amount + 1
                } else {
                    amountOfTournamentsForThatDay["Woensdag"] = 1
                }
            case "Donderdag":
                if let amount = amountOfTournamentsForThatDay["Donderdag"] {
                    amountOfTournamentsForThatDay["Donderdag"] = amount + 1
                } else {
                    amountOfTournamentsForThatDay["Donderdag"] = 1
                }
            case "Vrijdag":
                if let amount = amountOfTournamentsForThatDay["Vrijdag"] {
                    amountOfTournamentsForThatDay["Vrijdag"] = amount + 1
                } else {
                    amountOfTournamentsForThatDay["Vrijdag"] = 1
                }
            case "Zaterdag":
                if let amount = amountOfTournamentsForThatDay["Zaterdag"] {
                    amountOfTournamentsForThatDay["Zaterdag"] = amount + 1
                } else {
                    amountOfTournamentsForThatDay["Zaterdag"] = 1
                }
            case "Zondag":
                if let amount = amountOfTournamentsForThatDay["Zondag"] {
                    amountOfTournamentsForThatDay["Zondag"] = amount + 1
                } else {
                    amountOfTournamentsForThatDay["Zondag"] = 1
                }
            default:
                break
            }
        }
        amountMaandag.text = "\(amountOfTournamentsForThatDay["Maandag"] ?? 0) Tournament(s)"
        amountDinsdag.text = "\(amountOfTournamentsForThatDay["Dinsdag"] ?? 0) Tournament(s)"
        amountWoensdag.text = "\(amountOfTournamentsForThatDay["Woensdag"] ?? 0) Tournament(s)"
        amountDonderdag.text =  "\(amountOfTournamentsForThatDay["Donderdag"] ?? 0) Tournament(s)"
        amountVrijdag.text = "\(amountOfTournamentsForThatDay["Vrijdag"] ?? 0) Tournament(s)"
        amountZaterdag.text = "\(amountOfTournamentsForThatDay["Zaterdag"] ?? 0) Tournament(s)"
        amountZondag.text = "\(amountOfTournamentsForThatDay["Zondag"] ?? 0) Tournament(s)"
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "didSelectDay" else {
            fatalError("Unknown Segue")
        }
        
        let destination = segue.destination as! ThisWeekDayViewController
        let selection = weekDays.indexPathForSelectedRow!
        switch selection.row {
        case 0:
            destination.day = "Maandag"
        case 1:
            destination.day = "Dinsdag"
        case 2:
            destination.day = "Woensdag"
        case 3:
            destination.day = "Donderdag"
        case 4:
            destination.day = "Vrijdag"
        case 5:
            destination.day = "Zaterdag"
        case 6:
            destination.day = "Zondag"
        default:
            destination.day = ""
        }
        destination.tournamentsToModerate = tournamentsToModerate
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "didSelectDay", sender: self)
        
    }
}


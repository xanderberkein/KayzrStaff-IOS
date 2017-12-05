import UIKit
import KayzrStaff_Shared
class AvailabilityViewController : UIViewController {
    @IBOutlet weak var availabiltyTable: UITableView!
    @IBOutlet weak var sendAvailabilitiesButton: UIBarButtonItem!
    
    var tourneysToModerate : [Availability] = [Availability(available: false,id: 1, name: "Counter-strike:Global Offensive 5V5",
                                                            nameShort: "RL 5V5",day:"Maandag", date: "10/2/2017", hour: "17h20",
                                                            moderator: "yannickverc"),
                                               Availability(available: false,id: 1, name: "Counter-strike:Global Offensive 5V5",
                                                            nameShort: "CSGO 5V5",day:"Dinsdag", date: "10/2/2017", hour: "17h20",
                                                            moderator: "yannickverc"),
                                               Availability(available: false,id: 1, name: "Counter-strike:Global Offensive 5V5",
                                                            nameShort: "LOL 5V5",day:"Dinsdag", date: "10/2/2017", hour: "17h20",
                                                            moderator: "yannickverc"),
                                               Availability(available: false,id: 1, name: "Counter-strike:Global Offensive 5V5",
                                                            nameShort: "BH 5V5",day:"Woensdag", date: "10/2/2017", hour: "17h20",
                                                            moderator: "yannickverc"),
                                               Availability(available: false,id: 1, name: "Counter-strike:Global Offensive 5V5",
                                                            nameShort: "FIFA 5V5",day:"Donderdag", date: "10/2/2017", hour: "17h20",
                                                            moderator: "yannickverc"),
                                               Availability(available: false,id: 1, name: "Counter-strike:Global Offensive 5V5",
                                                            nameShort: "LOL 1V1 ARAM CV",day:"Vrijdag", date: "10/2/2017", hour: "17h20",
                                                            moderator: "yannickverc"),
                                               Availability(available: false,id: 1, name: "Counter-strike:Global Offensive 5V5",
                                                            nameShort: "CSGO 5V5",day:"Zaterdag", date: "10/2/2017", hour: "17h20",
                                                            moderator: "yannickverc"),
                                               Availability(available: false,id: 1, name: "Counter-strike:Global Offensive 5V5",
                                                            nameShort: "CSGO 5V5",day:"Zaterdag", date: "10/2/2017", hour: "17h20",
                                                            moderator: "yannickverc"),
                                               Availability(available: false,id: 1, name: "Counter-strike:Global Offensive 5V5",
                                                            nameShort: "CSGO 5V5",day:"Zaterdag", date: "10/2/2017", hour: "17h20",
                                                            moderator: "yannickverc"),
                                               Availability(available: false,id: 1, name: "Counter-strike:Global Offensive 5V5",
                                                            nameShort: "CSGO 5V5",day:"Zondag", date: "10/2/2017", hour: "17h20",
                                                            moderator: "yannickverc"),
                                               Availability(available: false,id: 1, name: "Counter-strike:Global Offensive 5V5",
                                                            nameShort: "CSGO 5V5",day:"Zondag", date: "10/2/2017", hour: "17h20",
                                                            moderator: "yannickverc")]
    var tournamentsForDay = [Int : [Availability]]()
    
    override func viewDidLoad() {
        
        for availability in tourneysToModerate {
            switch availability.day {
            case "Maandag":
                if let _ = tournamentsForDay[0] {
                    tournamentsForDay[0]!.append(availability)
                } else {
                    tournamentsForDay[0] = [availability]
                }
            case "Dinsdag":
                if let _ = tournamentsForDay[1] {
                    tournamentsForDay[1]!.append(availability)
                } else {
                    tournamentsForDay[1] = [availability]
                }
            case "Woensdag":
                if let _ = tournamentsForDay[2] {
                    tournamentsForDay[2]!.append(availability)
                } else {
                    tournamentsForDay[2] = [availability]
                }
            case "Donderdag":
                if let _ = tournamentsForDay[3] {
                    tournamentsForDay[3]!.append(availability)
                } else {
                    tournamentsForDay[3] = [availability]
                }
            case "Vrijdag":
                if let _ = tournamentsForDay[4] {
                    tournamentsForDay[4]!.append(availability)
                } else {
                    tournamentsForDay[4] = [availability]
                }
            case "Zaterdag":
                if let _ = tournamentsForDay[5] {
                    tournamentsForDay[5]!.append(availability)
                } else {
                    tournamentsForDay[5] = [availability]
                }
            case "Zondag":
                if let _ = tournamentsForDay[6] {
                    tournamentsForDay[6]!.append(availability)
                } else {
                    tournamentsForDay[6] = [availability]
                }
            default:
                break
            }
        }
    }
    
    @IBAction func sendAvailabilities() {
        tabBarController?.selectedIndex = 0
    }
    
}

extension AvailabilityViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // amount of days
        return 7
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // amount of rows for param section return int
        return tournamentsForDay[section]!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // return a vaible cell for that Indexpath.section and indexpath.row
        let cell = tableView.dequeueReusableCell(withIdentifier: "availabilityCell", for: indexPath) as! AvailabilityCell
        cell.availability = tournamentsForDay[indexPath.section]![indexPath.row]
        //cell.tournamentAvailable.addTarget(self, action: #selector(switchChanged), for: UIControlEvents.valueChanged)
        return cell
    }
}
extension AvailabilityViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dayCell") as! HeaderDayCell
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yy"
        
        
        
        switch section {
        case 0:
            cell.day = " Maandag " + formatter.string(from: date.maandag!)
        case 1:
            cell.day = "Dinsdag " + formatter.string(from: date.dinsdag!)
        case 2:
            cell.day = "Woensdag " + formatter.string(from: date.woensdag!)
        case 3:
            cell.day = "Donderdag " + formatter.string(from: date.donderdag!)
        case 4:
            cell.day = "Vrijdag " + formatter.string(from: date.vrijdag!)
        case 5:
            cell.day = "Zaterdag " + formatter.string(from: date.zaterdag!)
        case 6:
            cell.day = "Zondag " +  formatter.string(from: date.zondag!)
        default:
            break
        }
        return cell
    }
}
extension Date {
    // found this on stackoverflow: https://stackoverflow.com/questions/33397101/how-to-get-mondays-date-of-the-current-week-in-swift
    // ik heb het wel aangepast en uitgebreid zodat ik elke dag van de volgende week krijg
    public var maandag: Date? {
        let gregorian = Calendar(identifier: .gregorian)
        guard let sunday = gregorian.date(from: gregorian.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)) else { return nil }
        return gregorian.date(byAdding: .day, value: 9, to: sunday)
    }
    public var dinsdag: Date? {
        let gregorian = Calendar(identifier: .gregorian)
        guard let sunday = gregorian.date(from: gregorian.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)) else { return nil }
        return gregorian.date(byAdding: .day, value: 10, to: sunday)
    }
    public var woensdag: Date? {
        let gregorian = Calendar(identifier: .gregorian)
        guard let sunday = gregorian.date(from: gregorian.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)) else { return nil }
        return gregorian.date(byAdding: .day, value: 11, to: sunday)
    }
    public var donderdag: Date? {
        let gregorian = Calendar(identifier: .gregorian)
        guard let sunday = gregorian.date(from: gregorian.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)) else { return nil }
        return gregorian.date(byAdding: .day, value: 12, to: sunday)
    }
    public var vrijdag: Date? {
        let gregorian = Calendar(identifier: .gregorian)
        guard let sunday = gregorian.date(from: gregorian.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)) else { return nil }
        return gregorian.date(byAdding: .day, value: 13, to: sunday)
    }
    public var zaterdag: Date? {
        let gregorian = Calendar(identifier: .gregorian)
        guard let sunday = gregorian.date(from: gregorian.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)) else { return nil }
        return gregorian.date(byAdding: .day, value: 14, to: sunday)
    }
    public var zondag: Date? {
        let gregorian = Calendar(identifier: .gregorian)
        guard let sunday = gregorian.date(from: gregorian.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)) else { return nil }
        return gregorian.date(byAdding: .day, value: 15, to: sunday)
    }
}



import UIKit
import KayzrStaff_Shared

class HomeViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var TournamentsToModerate: [Tournament] = [Tournament(id: 1, name: "Counter-strike:Global Offensive 5V5", nameShort: "CSGO 5V5",
                                                          day:"Zaterdag", date: "10/2/2017", hour: "17h20", moderator: "mafken"),
                                               Tournament(id: 2, name: "CV League of Legends 5V5", nameShort: "LoL 5V5", day: "Zondag", date: "10/2/2017", hour: "17h20", moderator: "mafken"),
                                               Tournament(id: 3, name: "Rocket League 3V3", nameShort: "RL 3V3", day: "Zaterdag", date: "10/2/2017", hour: "17h20", moderator: "mafken"),
                                               Tournament(id: 4, name: "FIFA 18 1V1", nameShort: "FIFA 1V1", day: "Zaterdag", date: "10/2/2017", hour: "17h20", moderator: "mafken"),
                                               Tournament(id: 5, name: "Hearthstone 2V2", nameShort: "HS 2V2", day: "Zaterdag", date: "10/2/2017", hour: "17h20", moderator: "mafken")]
 
    
}
extension HomeViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TournamentsToModerate.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tournamentCell", for: indexPath) as! TournamentCell
        cell.tournament = TournamentsToModerate[indexPath.row]
        return cell
    }
}


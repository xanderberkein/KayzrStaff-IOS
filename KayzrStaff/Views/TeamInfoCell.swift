import UIKit

class TeamInfoCell : UITableViewCell {
    @IBOutlet weak var nickNameLabel: UILabel!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var callButton: UIButton!
    
    var user : User! {
        didSet{
            callButton.layer.cornerRadius = 10
            nickNameLabel.text = user.username
            fullNameLabel.text = user.fullname
        }
    }
    
    @IBAction func callTeamMember(){
        if let url = URL(string: "telprompt://\(user.phonenumber)"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
}


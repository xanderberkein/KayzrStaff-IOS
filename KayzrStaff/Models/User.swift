
public class User {
    public var userId: Int
    public var username: String
    public var fullname: String
    public var password: String
    public var phonenumber: String
    public var role: Role
    
    public enum Role {
        
        case CM
        case Mod
        case Admin
        
        static let roles = [Role.CM, .Mod, .Admin]
    }
    
    public init(userId: Int, username: String, fullname: String, password: String, phonenumber: String, role: Role) {
        self.userId = userId
        self.username = username
        self.fullname = fullname
        self.password = password
        self.phonenumber = phonenumber
        self.role = role
    }
}


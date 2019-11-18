import Routing
import Vapor

/// Register your application's routes here.
///
/// [Learn More →](https://docs.vapor.codes/3.0/getting-started/structure/#routesswift)
public func routes(_ router: Router) throws {
    router.get("") { req -> Future<View> in
        return try req.view().render("helloVapor")
    }
    
    router.get("hello") { req -> Future<View> in
//        //data from request - requires content type on request
//        let user = try req.content.decode(User.self)
//        return try req.view().render("home", user)
        
        //static data
        let values = User(name: "Jimmy Johns", age: 24, city: "Austin", hobbies: ["soccer", "basketball"])
        return try req.view().render("home", values)
    }
    
    //REQUEST'S from mobile devices
    router.post("login") { req -> Future<HTTPStatus> in
        return try req.content.decode(LoginRequest.self).map(to: HTTPStatus.self) { loginRequest in
            print(loginRequest.email) // user@vapor.codes
            print(loginRequest.password) // don't look!
            return .ok
        }
    }
    
    router.get("user") { req -> User in
        //do db query
        let userFound = User(name: "Jimmy Johns", age: 24, city: "Austin", hobbies: ["soccer", "basketball"])
        return userFound
    }
}

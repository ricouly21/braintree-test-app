import UIKit
import Braintree
import BraintreeDropIn

class MainViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let clientToken: String = "eyJ2ZXJzaW9uIjoyLCJhdXRob3JpemF0aW9uRmluZ2VycHJpbnQiOiJjMmM3NWNkM2U0ZjkzODFjMDY3MjVkM2RmZDFhYjdlZjgwZGUwMmMxOWNlZjkzNDNiNjdlOWViMzRkMjg4NzZjfGNyZWF0ZWRfYXQ9MjAxOC0wNC0zMFQyMDoxNTo0OC4zODcyMzQ0MTUrMDAwMFx1MDAyNm1lcmNoYW50X2lkPXNyMzh3dHNtaGt2cXJubWNcdTAwMjZwdWJsaWNfa2V5PXNyenpwd2N2eW5iM3pqY3IiLCJjb25maWdVcmwiOiJodHRwczovL2FwaS5zYW5kYm94LmJyYWludHJlZWdhdGV3YXkuY29tOjQ0My9tZXJjaGFudHMvc3IzOHd0c21oa3Zxcm5tYy9jbGllbnRfYXBpL3YxL2NvbmZpZ3VyYXRpb24iLCJjaGFsbGVuZ2VzIjpbXSwiZW52aXJvbm1lbnQiOiJzYW5kYm94IiwiY2xpZW50QXBpVXJsIjoiaHR0cHM6Ly9hcGkuc2FuZGJveC5icmFpbnRyZWVnYXRld2F5LmNvbTo0NDMvbWVyY2hhbnRzL3NyMzh3dHNtaGt2cXJubWMvY2xpZW50X2FwaSIsImFzc2V0c1VybCI6Imh0dHBzOi8vYXNzZXRzLmJyYWludHJlZWdhdGV3YXkuY29tIiwiYXV0aFVybCI6Imh0dHBzOi8vYXV0aC52ZW5tby5zYW5kYm94LmJyYWludHJlZWdhdGV3YXkuY29tIiwiYW5hbHl0aWNzIjp7InVybCI6Imh0dHBzOi8vY2xpZW50LWFuYWx5dGljcy5zYW5kYm94LmJyYWludHJlZWdhdGV3YXkuY29tL3NyMzh3dHNtaGt2cXJubWMifSwidGhyZWVEU2VjdXJlRW5hYmxlZCI6dHJ1ZSwicGF5cGFsRW5hYmxlZCI6dHJ1ZSwicGF5cGFsIjp7ImRpc3BsYXlOYW1lIjoidGhpbmtkd20iLCJjbGllbnRJZCI6bnVsbCwicHJpdmFjeVVybCI6Imh0dHA6Ly9leGFtcGxlLmNvbS9wcCIsInVzZXJBZ3JlZW1lbnRVcmwiOiJodHRwOi8vZXhhbXBsZS5jb20vdG9zIiwiYmFzZVVybCI6Imh0dHBzOi8vYXNzZXRzLmJyYWludHJlZWdhdGV3YXkuY29tIiwiYXNzZXRzVXJsIjoiaHR0cHM6Ly9jaGVja291dC5wYXlwYWwuY29tIiwiZGlyZWN0QmFzZVVybCI6bnVsbCwiYWxsb3dIdHRwIjp0cnVlLCJlbnZpcm9ubWVudE5vTmV0d29yayI6dHJ1ZSwiZW52aXJvbm1lbnQiOiJvZmZsaW5lIiwidW52ZXR0ZWRNZXJjaGFudCI6ZmFsc2UsImJyYWludHJlZUNsaWVudElkIjoibWFzdGVyY2xpZW50MyIsImJpbGxpbmdBZ3JlZW1lbnRzRW5hYmxlZCI6dHJ1ZSwibWVyY2hhbnRBY2NvdW50SWQiOiJ0aGlua2R3bSIsImN1cnJlbmN5SXNvQ29kZSI6IlVTRCJ9LCJtZXJjaGFudElkIjoic3IzOHd0c21oa3Zxcm5tYyIsInZlbm1vIjoib2ZmIn0="
        let request: BTDropInRequest = BTDropInRequest()
        let dropIn = BTDropInController(authorization: clientToken, request: request) {
            (controller, result, error) in
            
            if let result = result {
                print("\n")
                print(result.paymentOptionType)
                print(result.paymentMethod?.nonce)
                print(result.paymentIcon)
                print(result.paymentDescription)
            }
            
            print(error)
            
        }
        
        
        self.present(dropIn!, animated: true, completion: nil)
        
    }
    
}

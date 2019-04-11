//
//  ViewController.swift
//  decodingJWTToken
//
//  Created by muruganandam on 11/04/19.
//  Copyright © 2019 com.prematix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            let claims: ClaimSet = try decode("eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0eXBlIjoiYWNjZXNzIiwiaWF0IjoxNTU0ODg1NzgwLCJ1c2VyX2NsYWltcyI6eyJyb2xlIjoic2FkbWluIiwiY2xpZW50IjoiIiwidWlkIjoiNDQ0IiwiYnJhbmNoIjoiIiwiZGVwYXJ0bWVudCI6IiIsImNvbGxlZ2VfbmFtZSI6IiIsImJhdGNoIjoiIiwiZGF0YSI6eyJyb2xlIjoic2FkbWluIiwiaW5zdGl0dXRlQ29kZSI6InBzZyIsIm5hbWUiOiJQcmVldGhpIiwibW9iaWxlIjoiOTYzMjU4NzQxMCIsImRlZmF1bHRQYXNzd29yZCI6IjEyMyIsInVzZXJUeXBlIjoic2FkbWluIiwic3RhdHVzIjoiYWN0aXZlIiwiX2lkIjoiNWMyZjUxYWFjZDljODYyNDQ0ZWM4MjRmIiwicGljdHVyZVVybCI6Imh0dHBzOi8vd3d3Lmdvb2dsZS5jb20vaW1hZ2VzL2JyYW5kaW5nL2dvb2dsZWxvZ28vMngvZ29vZ2xlbG9nb19jb2xvcl8yNzJ4OTJkcC5wbmciLCJwYXNzd29yZCI6IiQyYiQxMiQuUGZiSHo3TTNudlF4ZVIyV2wyVm4uTmpmSnUzdTB2RDFydjNqLldpUG9kTWxMeW9zc1dlYSIsImluc3RpdHV0ZU5hbWUiOiJhbm5hIHVuaXZlcnNpdHkiLCJlbWFpbCI6InByZW1hdGl4X3ByZWV0aGlAaG90bWFpbC5jb20iLCJ1aWQiOiI0NDQifSwiZW50aXR5X2xvZ28iOiIiLCJlbnRpdHkiOiIiLCJjbGllbnRMb2dvIjoiIiwicGljdHVyZVVybCI6IiIsImRpc3BsYXlOYW1lIjoiUHJlZXRoaSIsInJvbGVzIjpbXX0sImZyZXNoIjpmYWxzZSwianRpIjoiZWJmZjk1NWYtMDhhYy00Y2I5LTg5ODMtMzBmOTViN2ZhOTlmIiwibmJmIjoxNTU0ODg1NzgwLCJpZGVudGl0eSI6IjQ0NCIsImV4cCI6MTU1NDk3MjE4MH0.lD0c7BkZl3Mf9hBiqUV5Np_V85eb1zIsr60mPB2VhQ4", algorithm: .hs256("lAm6I4HJE7VdKQCFV8fJaSsgBSNPUXfy".data(using: .utf8)!))
            print("The final decrpted value is ",claims)
        } catch {
            print("Failed to decode JWT: \(error)")
        }
}

}

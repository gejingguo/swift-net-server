//
// Created by andyge on 16/1/7.
//

import Foundation
import SwiftNet

print("hello world!")

do {
    var loop = Loop(ServerTCPDelegate())

    var server = TCPServer(loop: loop)
    try server.listen(8999)

    //print("before run.")
    try loop.run()
    print("server run ok.")

} catch {
    print("err:\(error)")
}
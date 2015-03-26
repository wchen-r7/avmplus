/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package StaticPropertyPackage {

        public namespace ns1;
    
    class BaseClass {
        static var string:String = "baseclass";
        ns1 static var date:Date = new Date(0);
    }
        
    public class AccStatPropViaSubClass extends BaseClass {
        
        public function getString() : String {
            return this.string;
        }
    }
}

/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
// 16.3 class with explicit base, super() initialize Object
package SuperObjectCall {
    public class SuperObjectCall {
        public function whatIsIt() : String {
            // SuperObjectCall extends Object but Object
            // has no addressable traits
            return super.toString() // error even tho' this.toString() works
        }
    }
}

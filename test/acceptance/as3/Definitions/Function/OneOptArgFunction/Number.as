/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
package OneOptArgFunction {

 function returnNumberInner(n:Number = 10,... rest):Number { return n; }
 public function returnNumber():Number { return returnNumberInner(12,true); }
}


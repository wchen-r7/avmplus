/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package myConsts {
    
    public class myConst {
        
        public const myVar = 10;
    }
}


// var SECTION = "Definitions\const";                  // provide a document reference (ie, ECMA section)
// var VERSION = "ActionScript 3.0";               // Version of JavaScript or ECMA
// var TITLE   = "const expression variable inside a package";     // Provide ECMA section title or a description
var BUGNUMBER = "";



/*===========================================================================*/

// Test case for checking the CONST keyword.

import myConsts.*;

import com.adobe.test.Assert;
var myObj = new myConst();

Assert.expectEq( "package myConsts { const myVar = 10; };", 10, myObj.myVar );


            // This function is for executing the test case and then
            // displaying the result on to the console or the LOG file.

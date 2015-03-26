/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
import com.adobe.test.Assert;
import com.adobe.test.Utils;
 
// var SECTION = "Definitions\const";                  // provide a document reference (ie, ECMA section)
// var VERSION = "ActionScript 3.0";           // Version of JavaScript or ECMA
// var TITLE   = "Initialize a global const after its initializer";       // Provide ECMA section title or a description
var BUGNUMBER = "";


var myNum1:Number;
var myNum2:Number;
const myNum3:Number;


myNum1 = -20;
myNum2 = 100;

var thisError:String = "no error";
try
{
    myNum3 = myNum1 / myNum3;
}
catch(err)
{
    thisError = err.toString();
}
finally
{
    Assert.expectEq("Initialize a global const after its initializer", "ReferenceError: Error #1074", Utils.referenceError(thisError));
}


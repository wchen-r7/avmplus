/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
import com.adobe.test.Assert;
//     var SECTION = "Types: int";
//     var VERSION = "as3";
//     var TITLE   = "typeof an int";


    var testcases = getTestCases();

function getTestCases() {
    var array = new Array();
    var item = 0;

    var i:int = 3;
    var result;
    try{
        result = typeof i;
    } catch (e) {
        result = "exception thrown";
    } finally {
        array[item++] = Assert.expectEq( "typeof i:int = 3",        "number",        result );
    }

    var ni:int = -1;
    result = typeof ni;
    array[item++] = Assert.expectEq( "typeof i:int = -1",        "number",        result );


    return ( array );
}
/*function test() {
    for ( tc = 0; tc < testcases.length; tc++ ) {
        testcases[tc].passed = writeTestCaseResult(
                            testcases[tc].expect,
                            testcases[tc].actual,
                            testcases[tc].description +" = "+ testcases[tc].actual );

        testcases[tc].reason += ( testcases[tc].passed ) ? "" : "delete should not be allowed "
    }
    stopTest();
    return ( testcases );
}*/

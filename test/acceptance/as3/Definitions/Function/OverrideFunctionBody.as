/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
import OverrideFunctionBody.*;
import com.adobe.test.Assert;

// outside package, inside class
class OverrideFunctionBodyBase {
    function OverrideFunctionBodyBase() {}
    function noReturnNoParams() { return null; }
    function noReturnParams(s:String, b:Boolean) { return null; }
    function noReturnCustomParam(c:Custom) { return null; }
    function returnNoParams():String { return null; }
    function returnParams(s:String, b:Boolean):String { return null; }
    function returnCustomNoParams():Custom { return null; }
}

class OverrideFunctionBodyClass extends OverrideFunctionBodyBase {
    function OverrideFunctionBodyClass() {}
    override function noReturnNoParams() { return "noReturnNoParams"; }
    override function noReturnParams(s:String, b:Boolean) { return s; }
    override function noReturnCustomParam(c:Custom) { return new Custom(); }
    override function returnNoParams():String { return "returnNoParams"; }
    override function returnParams(s:String, b:Boolean):String { return s; }
    override function returnCustomNoParams():Custom { return new Custom(); }
}


// var SECTION = "Definitions";       // provide a document reference (ie, ECMA section)
// var VERSION = "AS3";  // Version of JavaScript or ECMA
// var TITLE   = "Function Body Parameter/Result Type";       // Provide ECMA section title or a description
var BUGNUMBER = "";


var TESTOBJ;
var s:String = new String("this is a test");
var b:Boolean = new Boolean(true);
var c:Custom = new Custom();

// inside package, inside class
TESTOBJ = new TestObj();
Assert.expectEq( "TESTOBJ.noReturnNoParams()", "noReturnNoParams", TESTOBJ.noReturnNoParams() );
Assert.expectEq( "TESTOBJ.noReturnParams(s,b)", "this is a test", TESTOBJ.noReturnParams(s,b) );
Assert.expectEq( "TESTOBJ.noReturnCustomParams(c)", "[object Custom]", String(TESTOBJ.noReturnCustomParam(c)) );
Assert.expectEq( "TESTOBJ.returnNoParams()", "returnNoParams", TESTOBJ.returnNoParams() );
Assert.expectEq( "TESTOBJ.returnParams(s,b)", "this is a test", TESTOBJ.returnParams(s,b) );
Assert.expectEq( "TESTOBJ.returnCustomNoParams()", "[object Custom]", String(TESTOBJ.returnCustomNoParams()) );

// outside package, inside class
TESTOBJ = new OverrideFunctionBodyClass();
Assert.expectEq( "TESTOBJ.noReturnNoParams()", "noReturnNoParams", TESTOBJ.noReturnNoParams() );
Assert.expectEq( "TESTOBJ.noReturnParams(s,b)", "this is a test", TESTOBJ.noReturnParams(s,b) );
Assert.expectEq( "TESTOBJ.noReturnCustomParams()", "[object Custom]", String(TESTOBJ.noReturnCustomParam(c)) );
Assert.expectEq( "TESTOBJ.returnNoParams()", "returnNoParams", TESTOBJ.returnNoParams() );
Assert.expectEq( "TESTOBJ.returnParams(s,b)", "this is a test", TESTOBJ.returnParams(s,b) );
Assert.expectEq( "TESTOBJ.returnCustomNoParams()", "[object Custom]", String(TESTOBJ.returnCustomNoParams()) );


              // displays results.

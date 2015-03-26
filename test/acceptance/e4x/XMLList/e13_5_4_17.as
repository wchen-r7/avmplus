﻿/* -*- Mode: java; tab-width: 8; indent-tabs-mode: nil; c-basic-offset: 4 -*-
 *
 * ***** BEGIN LICENSE BLOCK *****
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
import com.adobe.test.Assert;

function START(summary)
{
      // print out bugnumber

     /*if ( BUGNUMBER ) {
              writeLineToLog ("BUGNUMBER: " + BUGNUMBER );
      }*/
    XML.setSettings (null);
    testcases = new Array();

    // text field for results
    tc = 0;
    /*this.addChild ( tf );
    tf.x = 30;
    tf.y = 50;
    tf.width = 200;
    tf.height = 400;*/

    //_print(summary);
    var summaryParts = summary.split(" ");
    //_print("section: " + summaryParts[0] + "!");
    //fileName = summaryParts[0];

}

function TEST(section, expected, actual)
{
    AddTestCase(section, expected, actual);
}
 

function TEST_XML(section, expected, actual)
{
  var actual_t = typeof actual;
  var expected_t = typeof expected;

  if (actual_t != "xml") {
    // force error on type mismatch
    TEST(section, new XML(), actual);
    return;
  }

  if (expected_t == "string") {

    TEST(section, expected, actual.toXMLString());
  } else if (expected_t == "number") {

    TEST(section, String(expected), actual.toXMLString());
  } else {
    reportFailure ("", 'Bad TEST_XML usage: type of expected is "+expected_t+", should be number or string');
  }
}

function reportFailure (section, msg)
{
  trace("~FAILURE: " + section + " | " + msg);
}

function AddTestCase( description, expect, actual ) {
   testcases[tc++] = Assert.expectEq(description, "|"+expect+"|", "|"+actual+"|" );
}

function myGetNamespace (obj, ns) {
    if (ns != undefined) {
        return obj.namespace(ns);
    } else {
        return obj.namespace();
    }
}




function NL()
{
  //return java.lang.System.getProperty("line.separator");
  return "\n";
}


function BUG(arg){
  // nothing here
}

function END()
{
    //test();
}

START("13.5.4.17 - XMLList processingInstructions()");

//TEST(1, true, XMLList.prototype.hasOwnProperty("processingInstructions"));

// extra whitespace is on purpose for <?foo              bar> at the end of this string
 var xmlDoc = "<?xml version='1.0'?><xml><?xml-stylesheet href='mystyle.xsl'?><employee id='1'><firstname>John</firstname><lastname>Walton</lastname><age>25</age></employee> <employee id='2'><firstname>Sue</firstname><lastname>Day</lastname><age>32</age><?child-xml bar?></employee><?foo              bar?></xml>";
 
 XML.ignoreProcessingInstructions = true;
 Assert.expectEq( "MYXML = new XMLList(xmlDoc), MYXML.processingInstructions().toString()", "",
              (MYXML = new XMLList(xmlDoc), MYXML.processingInstructions().toXMLString()));
 
 XML.ignoreProcessingInstructions = false;

 Assert.expectEq( "ignorePI = false, MYXML = new XMLList(xmlDoc), MYXML.processingInstructions().toString()",
             "<?xml-stylesheet href='mystyle.xsl'?>\n<?foo bar?>",
              (MYXML = new XMLList(xmlDoc), MYXML.processingInstructions().toXMLString()));
 
 Assert.expectEq( "MYXML = new XMLList(xmlDoc), MYXML.processingInstructions('*')",
    "<?xml-stylesheet href='mystyle.xsl'?>\n<?foo bar?>",
    (MYXML = new XMLList(xmlDoc), MYXML.processingInstructions("*").toXMLString()));
 
 Assert.expectEq( "MYXML = new XMLList(xmlDoc), MYXML.processingInstructions('xml-stylesheet')",
    "<?xml-stylesheet href='mystyle.xsl'?>",
    (MYXML = new XMLList(xmlDoc), MYXML.processingInstructions("xml-stylesheet").toString()));

 Assert.expectEq( "MYXML = new XMLList(xmlDoc), MYXML.processingInstructions(new QName('xml-stylesheet'))",
    "<?xml-stylesheet href='mystyle.xsl'?>",
    (MYXML = new XMLList(xmlDoc), MYXML.processingInstructions(new QName("xml-stylesheet")).toString()));
 
 Assert.expectEq( "MYXML = new XMLList(xmlDoc), MYXML.processingInstructions(new QName('foo'))",
    "<?foo bar?>",
    (MYXML = new XMLList(xmlDoc), MYXML.processingInstructions(new QName("foo")).toString()));
 
 // Attribute name does not match
 Assert.expectEq( "MYXML = new XMLList(xmlDoc), MYXML.processingInstructions('@xml-stylesheet')",
    "",
    (MYXML = new XMLList(xmlDoc), MYXML.processingInstructions("@xml-stylesheet").toString()));
 
 Assert.expectEq( "MYXML = new XMLList(xmlDoc), MYXML.processingInstructions('xml-foo')",
    "",
    (MYXML = new XMLList(xmlDoc), MYXML.processingInstructions("xml-foo").toString()));
 
 Assert.expectEq( "MYXML = new XMLList(xmlDoc), MYXML.processingInstructions('child-xml')",
    "",
    (MYXML = new XMLList(xmlDoc), MYXML.processingInstructions("child-xml").toString()));

END();

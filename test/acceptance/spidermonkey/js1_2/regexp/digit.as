/* -*- Mode: C++; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
import com.adobe.test.Assert;

gTestfile = 'digit.js';

/**
   Filename:     digit.js
   Description:  'Tests regular expressions containing \d'

   Author:       Nick Lerissa
   Date:         March 10, 1998
*/

// var SECTION = 'As described in Netscape doc "Whats new in JavaScript 1.2"';
// var VERSION = 'no version';
// var TITLE   = 'RegExp: \\d';


var non_digits = "_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\f\n\r\t\v~`!@#$%^&*()-+={[}]|\\:;'<,>./? " + '"';

var digits = "1234567890";

// be sure all digits are matched by \d
Assert.expectEq ( 
           "'" + digits + "'.match(new RegExp('\\d+'))",
           String([digits]), String(digits.match(new RegExp('\\d+'))));

// be sure all non-digits are matched by \D
Assert.expectEq ( 
           "'" + non_digits + "'.match(new RegExp('\\D+'))",
           String([non_digits]), String(non_digits.match(new RegExp('\\D+'))));

// be sure all non-digits are not matched by \d
Assert.expectEq ( 
           "'" + non_digits + "'.match(new RegExp('\\d'))",
           null, non_digits.match(new RegExp('\\d')));

// be sure all digits are not matched by \D
Assert.expectEq ( 
           "'" + digits + "'.match(new RegExp('\\D'))",
           null, digits.match(new RegExp('\\D')));

var s = non_digits + digits;

// be sure all digits are matched by \d
Assert.expectEq ( 
           "'" + s + "'.match(new RegExp('\\d+'))",
           String([digits]), String(s.match(new RegExp('\\d+'))));

var s = digits + non_digits;

// be sure all non-digits are matched by \D
Assert.expectEq ( 
           "'" + s + "'.match(new RegExp('\\D+'))",
           String([non_digits]), String(s.match(new RegExp('\\D+'))));

var i;

// be sure all digits match individually
for (i = 0; i < digits.length; ++i)
{
  s = 'ab' + digits.charAt(i) + 'cd';
  Assert.expectEq ( 
         "'" + s + "'.match(new RegExp('\\d'))",
         String([digits.charAt(i)]), String(s.match(new RegExp('\\d'))));
  Assert.expectEq ( 
         "'" + s + "'.match(/\\d/)",
         String([digits.charAt(i)]), String(s.match(/\d/)));
}
// be sure all non_digits match individually
for (i = 0; i < non_digits.length; ++i)
{
  s = '12' + non_digits.charAt(i) + '34';
  Assert.expectEq ( 
         "'" + s + "'.match(new RegExp('\\D'))",
         String([non_digits.charAt(i)]), String(s.match(new RegExp('\\D'))));
  Assert.expectEq ( 
         "'" + s + "'.match(/\\D/)",
         String([non_digits.charAt(i)]), String(s.match(/\D/)));
}


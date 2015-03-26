/*
 Copyright (C) 2007 Apple Inc.  All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions
 are met:
 1. Redistributions of source code must retain the above copyright
    notice, this list of conditions and the following disclaimer.
 2. Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in the
    documentation and/or other materials provided with the distribution.

 THIS SOFTWARE IS PROVIDED BY APPLE COMPUTER, INC. ``AS IS'' AND ANY
 EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL APPLE COMPUTER, INC. OR
 CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
 OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

// From: http://lxr.mozilla.org/mozilla/source/extensions/xml-rpc/src/nsXmlRpcClient.js#956

package {
  /* Convert data (an array of integers) to a Base64 string. */
  var toBase64Table:String = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';
  var toBase64TableArr:Array = toBase64Table.split();
  var base64Pad:String = '=';

  function toBase64(data:String):String {
      var result:String = '';
      var length:Number = data.length;
      var i:int;
      var dataarr:Array=data.split();
      // Convert every three bytes to 4 ascii characters.
      for (i = 0; i < (length - 2); i += 3) {
          result += toBase64TableArr[dataarr[i] >> 2];
          result += toBase64TableArr[((dataarr[i] & 0x03) << 4) + (dataarr[i+1] >> 4)];
          result += toBase64TableArr[((dataarr[i+1] & 0x0f) << 2) + (dataarr[i+2] >> 6)];
          result += toBase64TableArr[dataarr[i+2] & 0x3f];
      }

      // Convert the remaining 1 or 2 bytes, pad out to 4 characters.
      if (length%3) {
          i = length - (length%3);
          result += toBase64TableArr[dataarr[i] >> 2];
          if ((length%3) == 2) {
              result += toBase64TableArr[((dataarr[i] & 0x03) << 4) + (dataarr[i+1] >> 4)];
              result += toBase64TableArr[(dataarr[i+1] & 0x0f) << 2];
              result += base64Pad;
          } else {
              result += toBase64TableArr[(dataarr[i] & 0x03) << 4];
              result += base64Pad + base64Pad;
          }
      }
      
      return result;
  }

  /* Convert Base64 data to a string */
  var toBinaryTable:Array = [
      -1,-1,-1,-1, -1,-1,-1,-1, -1,-1,-1,-1, -1,-1,-1,-1,
      -1,-1,-1,-1, -1,-1,-1,-1, -1,-1,-1,-1, -1,-1,-1,-1,
      -1,-1,-1,-1, -1,-1,-1,-1, -1,-1,-1,62, -1,-1,-1,63,
      52,53,54,55, 56,57,58,59, 60,61,-1,-1, -1, 0,-1,-1,
      -1, 0, 1, 2,  3, 4, 5, 6,  7, 8, 9,10, 11,12,13,14,
      15,16,17,18, 19,20,21,22, 23,24,25,-1, -1,-1,-1,-1,
      -1,26,27,28, 29,30,31,32, 33,34,35,36, 37,38,39,40,
      41,42,43,44, 45,46,47,48, 49,50,51,-1, -1,-1,-1,-1
  ];

  function base64ToString(data:String):String {
      var result:String = '';
      var leftbits:Number = 0; // number of bits decoded, but yet to be appended
      var leftdata:Number = 0; // bits decoded, but yet to be appended
      var dataarr:Array=data.split();
      // Convert one by one.
      for (var i:int = 0; i < dataarr.length; i++) {
          var c:Number = toBinaryTable[data.charCodeAt(i) & 0x7f];
          var padding:Boolean = (dataarr[i] == base64Pad);
          // Skip illegal characters and whitespace
          if (c == -1) continue;
          
          // Collect data into leftdata, update bitcount
          leftdata = (leftdata << 6) | c;
          leftbits += 6;

          // If we have 8 or more bits, append 8 bits to the result
          if (leftbits >= 8) {
              leftbits -= 8;
              // Append if not padding.
              if (!padding)
                  result += String.fromCharCode((leftdata >> leftbits) & 0xff);
              leftdata &= (1 << leftbits) - 1;
          }
      }

      // If there are any bits left, the base64 string was corrupted
      if (leftbits)
          throw new Error('Corrupted base64 string');

      return result;
  }

  function runStringBase64():Number {
    if (CONFIG::desktop)
        var _sunSpiderStartDate:Number = (new Date).getTime();
    else // mobile
        var _sunSpiderStartDate:int = getTimer();
    
      var str:String = "";
    
      for ( var i:int = 0; i < 8192; i++ )
              str += String.fromCharCode( (25 * Math.random()) + 97 );
    
      for ( var i:int = 8192; i <= 16384; i *= 2 ) {
    
          var base64:String;
    
          base64 = toBase64(str);
          base64ToString(base64);
    
          // Double the string
          str += str;
      }
    
      toBinaryTable = null;
    
    
    if (CONFIG::desktop)
        var _sunSpiderInterval:Number = (new Date).getTime() - _sunSpiderStartDate;
    else // mobile
        var _sunSpiderInterval:int = getTimer() - _sunSpiderStartDate;
        
      return _sunSpiderInterval;
  }

  //verify test results first
  var testString = "1234567890qwertyuiop[]asdfghjkl;zxcvbnm,.";
  if (testString !== base64ToString(toBase64(testString))) {
      print('Test validation failed: Expected: '+testString+' Got: '+base64ToString(toBase64(testString)));
  } else {
      print("metric time " +runStringBase64());
  }
  
}

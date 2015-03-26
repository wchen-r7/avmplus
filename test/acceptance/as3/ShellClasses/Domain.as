/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package {
    import avmplus.Domain
    import avmplus.File
    import flash.utils.ByteArray
import com.adobe.test.Assert;

    public class testclass1 {
        var desc="test class";
        public function testclass1(desc) {
            this.desc=desc;
        }
        public function toString() {
            return desc;
        }
    }

    var data:Array=[0x10,0x00,0x2E,0x00,0x00,0x00,0x00,0x09,0x14,0x74,0x65,0x73,0x74,0x75,0x74,0x69,0x6C,0x73,0x3A,0x74,0x65,0x73,0x74,0x63,0x6C,0x61,0x73,0x73,0x32,0x00,0x04,0x64,0x65,0x73,0x63,0x0F,0x44,0x6F,0x6D,0x61,0x69,0x6E,0x55,0x74,0x69,0x6C,0x2E,0x61,0x73,0x24,0x31,0x09,0x74,0x65,0x73,0x74,0x75,0x74,0x69,0x6C,0x73,0x06,0x4F,0x62,0x6A,0x65,0x63,0x74,0x08,0x74,0x6F,0x53,0x74,0x72,0x69,0x6E,0x67,0x0A,0x74,0x65,0x73,0x74,0x63,0x6C,0x61,0x73,0x73,0x32,0x09,0x05,0x01,0x05,0x04,0x16,0x02,0x16,0x05,0x17,0x05,0x18,0x01,0x1A,0x01,0x1A,0x06,0x03,0x08,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x04,0x02,0x03,0x04,0x05,0x07,0x09,0x03,0x01,0x07,0x05,0x03,0x07,0x03,0x07,0x07,0x04,0x08,0x07,0x03,0x06,0x09,0x06,0x02,0x04,0x00,0x00,0x02,0x00,0x01,0x00,0x00,0x02,0x00,0x00,0x00,0x02,0x00,0x00,0x00,0x02,0x00,0x00,0x01,0x04,0x05,0x09,0x06,0x00,0x01,0x02,0x02,0x00,0x00,0x00,0x00,0x03,0x01,0x00,0x02,0x00,0x00,0x01,0x03,0x01,0x04,0x04,0x01,0x00,0x04,0x00,0x01,0x01,0x03,0x04,0x03,0xD0,0x30,0x47,0x00,0x00,0x01,0x02,0x02,0x04,0x05,0x0A,0xD0,0x30,0xD0,0x49,0x00,0xD0,0xD1,0x68,0x01,0x47,0x00,0x00,0x02,0x01,0x01,0x04,0x05,0x06,0xD0,0x30,0xD0,0x66,0x01,0x48,0x00,0x00,0x03,0x02,0x01,0x01,0x03,0x13,0xD0,0x30,0x65,0x00,0x5D,0x05,0x66,0x05,0x30,0x5D,0x06,0x66,0x06,0x58,0x00,0x1D,0x68,0x04,0x47,0x00,0x00];

    function writeDataFile() {
        var ba=new ByteArray;
        for (n in data) {
            ba.writeByte(data[n]);
    }
        File.writeByteArray("testclass.abc", ba);
    }


//     var SECTION = "domain";
//     var VERSION = "as3";
//     var TITLE   = "test the Domain class";


    Assert.expectEq("Domain currentDomain static getter is not null",
      true,
      Domain.currentDomain!=null);

    Assert.expectEq("Domain constructor is not null",
      true,
      new Domain(Domain.currentDomain)!=null);

    var domain=Domain.currentDomain;
    var cl:Class=domain.getClass("testclass1");
    Assert.expectEq("Domain getClass returns correct class",
      testclass1,
      cl);

    var tc1:testclass1=new cl("test class");
    Assert.expectEq("Domain getClass class can be constructed",
      "test class",
      tc1.toString());

    var err1;
    try {
        domain.load("unknown.abc");
    } catch (e) {
        err1=e.toString();
    }
   
    Assert.expectEq("Domain load non existant file",
      "Error: Error #1500",
      err1.substring(0,18));

    var err2;
    try {
       domain.load("DomainUtil.as");
    } catch(e) {
       err2=e.toString();
    }

    writeDataFile();
    domain.load("testclass.abc");
    var cl2=domain.getClass("testutils.testclass2");
    var tc2=new cl2("test class2");
    Assert.expectEq("Domain load filename, construct object",
      "test class2",
      tc2.toString());


}

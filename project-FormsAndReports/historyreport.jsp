<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %> 
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<!--
<rw:report id="report"> 
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="historyreport" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="MODULE1" xmlPrologType="text">
  <![CDATA[<?xml version="1.0" encoding="&Encoding"?>]]>
  </xmlSettings>
  <reportHtmlEscapes>
    <beforeReportHtmlEscape>
    <![CDATA[<html>
<body dir=&Direction bgcolor="#ffffff">
]]>
    </beforeReportHtmlEscape>
    <beforeFormHtmlEscape>
    <![CDATA[<html>
<body dir=&Direction bgcolor="#ffffff">
<form method=post action="_action_">
<input name="hidden_run_parameters" type=hidden value="_hidden_">
<font color=red><!--error--></font>
<center>
<p><table border=0 cellspacing=0 cellpadding=0>
<tr>
<td><input type=submit></td>
<td width=15>
<td><input type=reset></td>
</tr>
</table>
<p><hr><p>
]]>
    </beforeFormHtmlEscape>
  </reportHtmlEscapes>
  <data>
    <dataSource name="Q_1">
      <select>
      <![CDATA[SELECT ALL HISTORY.ORDER_DATE, 
HISTORY."Customer Name", HISTORY."Employee Name", HISTORY.ITEM_NAME, 
HISTORY.ITEM_QUANTITY, HISTORY.ITEM_PRICE, HISTORY.TOTALPRICE
FROM HISTORY ]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_ORDER_DATE">
        <displayInfo x="1.19421" y="1.94995" width="1.61169" height="1.51929"
        />
        <dataItem name="ORDER_DATE" datatype="date" oracleDatatype="date"
         columnOrder="11" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Order Date">
          <dataDescriptor expression="HISTORY.ORDER_DATE"
           descriptiveExpression="ORDER_DATE" order="1" width="9"/>
        </dataItem>
        <dataItem name="Customer_Name" datatype="vchar2" columnOrder="12"
         width="201" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Customer Name">
          <dataDescriptor expression="HISTORY.&quot;Customer Name&quot;"
           descriptiveExpression="Customer Name" order="2" width="201"/>
        </dataItem>
        <dataItem name="Employee_Name" datatype="vchar2" columnOrder="13"
         width="201" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Employee Name">
          <dataDescriptor expression="HISTORY.&quot;Employee Name&quot;"
           descriptiveExpression="Employee Name" order="3" width="201"/>
        </dataItem>
        <dataItem name="ITEM_NAME" datatype="vchar2" columnOrder="14"
         width="100" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Item Name">
          <dataDescriptor expression="HISTORY.ITEM_NAME"
           descriptiveExpression="ITEM_NAME" order="4" width="100"/>
        </dataItem>
        <dataItem name="ITEM_QUANTITY" oracleDatatype="number"
         columnOrder="15" width="22" defaultWidth="60000"
         defaultHeight="10000" columnFlags="33" defaultLabel="Item Quantity">
          <dataDescriptor expression="HISTORY.ITEM_QUANTITY"
           descriptiveExpression="ITEM_QUANTITY" order="5" width="22"
           precision="4"/>
        </dataItem>
        <dataItem name="ITEM_PRICE" oracleDatatype="number" columnOrder="16"
         width="22" defaultWidth="80000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Item Price">
          <dataDescriptor expression="HISTORY.ITEM_PRICE"
           descriptiveExpression="ITEM_PRICE" order="6" width="22"
           precision="6"/>
        </dataItem>
        <dataItem name="TOTALPRICE" oracleDatatype="number" columnOrder="17"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Totalprice">
          <dataDescriptor expression="HISTORY.TOTALPRICE"
           descriptiveExpression="TOTALPRICE" order="7" width="22"
           precision="38"/>
        </dataItem>
      </group>
    </dataSource>
    <summary name="SumTOTALPRICEPerReport" source="TOTALPRICE" function="sum"
     width="22" precision="38" reset="report" compute="report"
     defaultWidth="90000" defaultHeight="10000" columnFlags="552"
     defaultLabel="Total:">
      <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"/>
    </summary>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_ORDER_DATE_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="7.37500" height="0.75000"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"
         fillBackgroundColor="r100g100b100"/>
        <repeatingFrame name="R_G_ORDER_DATE" source="G_ORDER_DATE"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.37500" width="7.37500"
           height="0.18750"/>
          <generalLayout verticalElasticity="expand"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableCell"/>
          <field name="F_ORDER_DATE" source="ORDER_DATE" alignment="start">
            <font face="Arial" size="10"/>
            <geometryInfo x="0.00000" y="0.37500" width="0.93750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_Customer_Name" source="Customer_Name"
           alignment="center">
            <font face="Arial" size="9"/>
            <geometryInfo x="1.00000" y="0.37500" width="0.93750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_Employee_Name" source="Employee_Name"
           alignment="start">
            <font face="Arial" size="10"/>
            <geometryInfo x="2.00000" y="0.37500" width="0.81250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_ITEM_NAME" source="ITEM_NAME" alignment="center">
            <font face="Arial" size="10"/>
            <geometryInfo x="3.00000" y="0.37500" width="0.81250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_ITEM_QUANTITY" source="ITEM_QUANTITY"
           alignment="center">
            <font face="Arial" size="10"/>
            <geometryInfo x="3.81250" y="0.37500" width="0.93750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_ITEM_PRICE" source="ITEM_PRICE" alignment="center">
            <font face="Arial" size="10"/>
            <geometryInfo x="4.75000" y="0.37500" width="1.18750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_TOTALPRICE" source="TOTALPRICE" alignment="center">
            <font face="Arial" size="10"/>
            <geometryInfo x="5.93750" y="0.37500" width="1.43750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
        </repeatingFrame>
        <frame name="M_G_ORDER_DATE_FTR">
          <geometryInfo x="0.00000" y="0.56250" width="7.37500"
           height="0.18750"/>
          <advancedLayout printObjectOnPage="lastPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="Totals"/>
          <field name="F_SumTOTALPRICEPerReport"
           source="SumTOTALPRICEPerReport" alignment="start">
            <font face="Arial" size="10" bold="yes"/>
            <geometryInfo x="5.93750" y="0.56250" width="1.43750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <text name="B_Total">
            <geometryInfo x="0.00000" y="0.56250" width="0.43750"
             height="0.18750"/>
            <textSegment>
              <font face="Arial" size="10" bold="yes"/>
              <string>
              <![CDATA[Total:]]>
              </string>
            </textSegment>
          </text>
        </frame>
        <frame name="M_G_ORDER_DATE_HDR">
          <geometryInfo x="0.00000" y="0.00000" width="7.37500"
           height="0.37500"/>
          <advancedLayout printObjectOnPage="allPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableHeading"/>
          <text name="B_ORDER_DATE">
            <geometryInfo x="0.00000" y="0.00000" width="0.93750"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="Arial" size="10" bold="yes" textColor="r100g100b100"
              />
              <string>
              <![CDATA[Order Date]]>
              </string>
            </textSegment>
          </text>
          <text name="B_Customer_Name">
            <geometryInfo x="1.00000" y="0.00000" width="0.93750"
             height="0.37500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="10" bold="yes" textColor="r100g100b100"
              />
              <string>
              <![CDATA[Customer
]]>
              </string>
            </textSegment>
            <textSegment>
              <font face="Arial" size="10" bold="yes" textColor="r100g100b100"
              />
              <string>
              <![CDATA[Name]]>
              </string>
            </textSegment>
          </text>
          <text name="B_Employee_Name">
            <geometryInfo x="2.00000" y="0.00000" width="0.81250"
             height="0.37500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="10" bold="yes" textColor="r100g100b100"
              />
              <string>
              <![CDATA[Employee
]]>
              </string>
            </textSegment>
            <textSegment>
              <font face="Arial" size="10" bold="yes" textColor="r100g100b100"
              />
              <string>
              <![CDATA[Name]]>
              </string>
            </textSegment>
          </text>
          <text name="B_ITEM_NAME">
            <textSettings justify="center"/>
            <geometryInfo x="3.00000" y="0.00000" width="0.81250"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="10" bold="yes" textColor="r100g100b100"
              />
              <string>
              <![CDATA[Item Name]]>
              </string>
            </textSegment>
          </text>
          <text name="B_ITEM_QUANTITY">
            <textSettings justify="center"/>
            <geometryInfo x="3.81250" y="0.00000" width="0.93750"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="Arial" size="10" bold="yes" textColor="r100g100b100"
              />
              <string>
              <![CDATA[Item Quantity]]>
              </string>
            </textSegment>
          </text>
          <text name="B_ITEM_PRICE">
            <textSettings justify="center"/>
            <geometryInfo x="4.75000" y="0.00000" width="1.18750"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="Arial" size="10" bold="yes" textColor="r100g100b100"
              />
              <string>
              <![CDATA[Item Price]]>
              </string>
            </textSegment>
          </text>
          <text name="B_TOTALPRICE">
            <geometryInfo x="5.93750" y="0.00000" width="1.43750"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="Arial" size="10" bold="yes" textColor="r100g100b100"
              />
              <string>
              <![CDATA[Totalprice]]>
              </string>
            </textSegment>
          </text>
        </frame>
      </frame>
    </body>
    <margin>
      <image name="B_1_SEC2" templateSection="main">
        <geometryInfo x="0.50000" y="0.43750" width="1.40625" height="0.37500"
        />
        <visualSettings fillPattern="transparent" fillBackgroundColor="black"
         linePattern="transparent" lineBackgroundColor="black"/>
        <points>
          <point x="0.00000" y="0.00000"/>
          <point x="1.40625" y="0.37500"/>
          <point x="0.50000" y="0.43750"/>
          <point x="1.40625" y="0.37500"/>
        </points>
        <binaryData encoding="hexidecimal" dataId="image.B_1_SEC2">
          
74946483 93167800 42007F00 00FFFFFF 183B180E CE0E3076 300C9D0C 1A6C1A98
8B98FE6F FE7FAF7F 0B0D0B8A BC8A19DB 198CED8C 0D3E0D7E 1F7E991C 998D7E8D
8B4D8B31 1731260A 26257925 17AA1723 482324D8 2432A732 97EA97B0 C6B0965A
96A388A3 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00129F40 00000000 00C20000 00007800 42000080
FF003080 C1840B0A 1C388031 A2C58C01 1668B081 6084C10A 18305868 8133E043
08000874 0020A061 8F820A0C 143040A3 E7400408 0E8C5912 90E7C69B 031C1859
8317E189 830804EC F90438A0 51811A06 2859B080 A18B9C27 1E2070B2 96A0C794
2B0ECC68 C15829C9 8614BA7D FA8350A0 05050508 749A2091 87460855 563D1845
D36CC187 5B1E15FA B0626500 BC7DBA85 406080E3 00070203 C5F870C0 A2020112
921CBBF6 7A2EC9B2 0BEA0C70 20237307 C20D0C75 A031D76F D1DF35C2 00805090
89CD8C43 18258AF1 D53146A8 63E284BA 76D5EA44 D23DBA40 98212821 06AC2983
05202A5B A9600467 36145BE1 D0B0C4EE 1103148E 5B723EE8 C102E630 5AE590C4
FF4A0B2F 04508830 0387C20F B1381F99 41E24284 021C67EC 5E808371 450F1313
148DB292 010C0810 CD540018 108D6200 2810C747 0218F080 02121060 02809505
51C00A1A D670060A 1E400046 8A1E004D 97491288 00400304 0724D086 6974B023
810810E6 5C840EF4 F0E08F25 E8902E46 3E08E0AC 824A10FE DF461C88 F2EA4218
68904104 1C203263 083D4030 C50E1530 A1AA7D26 00942001 18C801CA 4F363893
1F8B3228 A023814A 09862081 49003267 583169A1 21002610 A12B8F19 A842A747
0C196F1E 4E2EA480 C20802F7 26AA9562 A9E1999E 3A2A000F 823A100D 97587A68
B790AA12 5031CD44 1C7826A6 8276F538 EA450028 52220C06 79E1D9A4 0640D823
FFA98228 B6AE8000 30C02CAE 5D7A576E 474EA825 200326C5 45E00462 9AC52E4E
AE085220 06821871 20070038 1C24080A 76B21EA4 0E205B6F 8E523816 A65B4EA8
931C9A12 9990C886 CD8B1DE7 55AE74BC 600DCA4A 59E10F00 38A2D4B6 1E74E045
80D67BF2 120EFE08 B08B583E 884E92B9 723522E8 A000D9D7 60540419 FE6BA8A6
E4203386 04107F23 84D5CB33 27C23629 E8E59E1B 0522E00C D2E4CB66 A008786C
200F2210 3264BC4D F90CA0A9 CA9A7179 BC6238F0 81CE0CFC BF20CB25 7C302191
4DFA300B A2C23903 E8870EB8 70C8865E E9F2149B 9AECCA6C BDCA7401 C0C24A20
60F5926B C85081C5 23C8C06B BD8E8830 CB79E29B F6F7817D 50657005 18404596
FFD3042C B7EEC0F6 FCF31204 0C3B78A3 DF1D1090 C9D10C30 1CEA4B6B 7420228D
5FED07F5 0100175C 20E20C29 C73E4704 1BF16798 3B4019B7 4C0A2054 A74C083E
2F67421A 0000A008 433BE3E7 94065A5B A75AD228 1EEA4AB3 4A067603 14608BB3
891C60AB AF930F40 9A30059F 08E6FA43 4F5BA83E 49001ECF 228E66CA 04AFE7DE
F47D31F4 937FF063 F0EB7BF1 95B4060A B82181D7 0584F7DE F26B835E 80612EAE
FA488FD8 83140810 200404AE 01080810 065D2080 86C11022 0300FE16 0410410C
AA10600C 6370880C 403A7200 40E7D210 404441E4 E08404C9 410808DF 301210FB
7F1160C3 0B489318 08707524 2C00C20C 06D1C219 20E18389 598A0758 F1930CE0
FF3001C3 00C10C28 824C9C30 A08F1100 53080859 2005D0D4 88047319 0756E118
08B5E00F 2C361E46 8860C706 FFA4423C 70257C10 F2C20030 210B0440 2E4E7880
43E09039 32087117 13000B17 04296A8B 29312309 68C4CF84 40A88B4C 70205C18
16C7066F 000E0C70 611D58D5 C716F0F3 2D6C706A EAC847C4 EC200F74 08D3AB17
52A14504 11100E74 3EC20E24 F4434205 46898440 A10AC6F1 1F3A2210 919C70AD
62294D9E 06008E84 5940046A 00E9481A 65EE8394 32AD0752 808712E4 AB4A0865
220548B2 184EB0BB 453CA5E5 01728BC5 98E29E87 CA6044E2 18F11E3A 05010584
ED142DD4 34416A74 E68F1140 0FEAA980 C15E1132 94DCE265 29086B14 2220977B
FFDCF847 0DE8C49F 7683F391 41804121 28D7C04A 74259AE4 004000A9 32C842EF
C329EC71 6E252900 07084090 A41DE2A5 151A93CC 9C10389E 5400860B 00508386
8079957C FE1211B9 4440A0C3 93A4ACA5 244FE99A B45AB947 9804BD08 1DF97D4A
22949A85 BC9F105E 7803D75E F466AD05 95671D83 E0831A10 47840C86 91430060
84081C29 902D68A3 41C9E111 7A74C9AF 2485EA29 6AFCC5A6 D298A194 88205EE8
04CFACF0 9B9065F8 8E278A90 D8465F08 2D648921 07490006 A6949CAF 243A2235
5ACE4DA0 3477904D 008AF848 87D856D2 B8886C70 E44D4AD0 5BC69D40 BC6DA52F
E208A252 0E206198 0880854B 1B5C4F36 467CA215 C9896F58 49DCCE30 12AC9DCB
44A53D68 C0842120 400110D7 6A1B10AB 5EDAF630 0908A3A0 04A96C5E 96E6BE8F
3C4EA002 4B8F47E2 47B8B9CD 10A37BB8 BC56E6D2 5AB7BDEE A77FBB0E D0FA877C
B4E51F60 4000B300 FFFFFFFF FFFFFFFF 01100000 FFFFFFFF 11100000 FFFFFFFF
FFFFFFFF 21100000 31100000 FFFFFFFF FFFFFFFF 41100000 51100000 FFFFFFFF
FFFFFFFF 61100000 71100000 FFFFFFFF 81100000 91100000 FFFFFFFF FFFFFFFF
A1100000 FFFFFFFF B1100000 FFFFFFFF C1100000 FFFFFFFF FFFFFFFF D1100000
FFFFFFFF FFFFFFFF E1100000 FFFFFFFF F1100000 FFFFFFFF FFFFFFFF 02100000
FFFFFFFF FFFFFFFF 12100000 FFFFFFFF FFFFFFFF 22100000 FFFFFFFF FFFFFFFF
32100000 42100000 FFFFFFFF FFFFFFFF 52100000 FFFFFFFF FFFFFFFF 62100000
72100000 FFFFFFFF FFFFFFFF 82100000 FFFFFFFF FFFFFFFF 92100000 FFFFFFFF
FFFFFFFF A2100000 FFFFFFFF B2100000 FFFFFFFF C2100000 D2100000 FFFFFFFF
FFFFFFFF E2100000 F2100000 FFFFFFFF FFFFFFFF 03100000 FFFFFFFF FFFFFFFF
13100000 FFFFFFFF FFFFFFFF 23100000 33100000 FFFFFFFF FFFFFFFF 43100000
FFFFFFFF 53100000 FFFFFFFF FFFFFFFF 63100000 73100000 FFFFFFFF FFFFFFFF
83100000 93100000 FFFFFFFF FFFFFFFF A3100000 B3100000 FFFFFFFF C3100000
D3100000 FFFFFFFF FFFFFFFF E3100000 FFFFFFFF F3100000 FFFFFFFF 04100000
FFFFFFFF FFFFFFFF 14100000 FFFFFFFF FFFFFFFF 24100000 FFFFFFFF 34100000
FFFFFFFF FFFFFFFF 44100000 FFFFFFFF FFFFFFFF 54100000 FFFFFFFF FFFFFFFF
64100000 74100000 FFFFFFFF 84100000 FFFFFFFF FFFFFFFF 94100000 FFFFFFFF
A4100000 B4100000 FFFFFFFF FFFFFFFF C4100000 FFFFFFFF FFFFFFFF D4100000
FFFFFFFF FFFFFFFF E4100000 F4100000 FFFFFFFF FFFFFFFF 05100000 FFFFFFFF
15100000 FFFFFFFF FFFFFFFF 25100000 35100000 FFFFFFFF FFFFFFFF 45100000
55100000 FFFFFFFF FFFFFFFF 65100000 75100000 FFFFFFFF 85100000 95100000
FFFFFFFF FFFFFFFF A5100000 FFFFFFFF B5100000 FFFFFFFF C5100000 FFFFFFFF
FFFFFFFF D5100000 FFFFFFFF FFFFFFFF E5100000 FFFFFFFF F5100000 FFFFFFFF
FFFFFFFF 06100000 FFFFFFFF FFFFFFFF 16100000 FFFFFFFF FFFFFFFF 26100000
FFFFFFFF FFFFFFFF 36100000 46100000 FFFFFFFF FFFFFFFF 56100000 FFFFFFFF
FFFFFFFF 66100000 76100000 FFFFFFFF FFFFFFFF 86100000 FFFFFFFF FFFFFFFF
96100000 FFFFFFFF FFFFFFFF A6100000 FFFFFFFF B6100000 FFFFFFFF C6100000
D6100000 FFFFFFFF FFFFFFFF E6100000 F6100000 FFFFFFFF FFFFFFFF 07100000
FFFFFFFF FFFFFFFF 17100000 FFFF
        </binaryData>
      </image>
    </margin>
  </section>
  </layout>
  <colorPalette>
    <color index="190" displayName="TextColor" value="#000000"/>
    <color index="191" displayName="TableHeading" value="#046804"/>
    <color index="192" displayName="TableCell" value="#c0d9c0"/>
    <color index="193" displayName="Totals" value="#81b381"/>
  </colorPalette>
  <reportPrivate defaultReportType="tabular" templateName="rwgreen"/>
</report>
</rw:objects>
-->
<HTML>
<HEAD>
<rw:style id="rwgreen">
<link rel="StyleSheet" type="text/css" href="css/rwgreen.css">
</rw:style>

<TITLE> Your Title </TITLE>
<META content="text/html; charset=iso-8859-1" http-equiv=Content-Type>



<BODY bgColor=#ffffff link=#000000 vLink=#000000>
<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor=#ffffff rowSpan=2 vAlign=center width=188> 
      <p><IMG src="images/rwgreen_logo.gif" width="135" height="36"><br>
      </p>
      </TD>
    <TD bgColor=#ffffff height=40 vAlign=top><IMG alt="" height=1 src="images/stretch.gif" width=5></TD>
    <TD align=right bgColor=#ffffff vAlign=bottom>&nbsp; </TD>
  </TR></TBODY></TABLE>
<TABLE bgColor=#ff0000 border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD class="OraColumnHeader">&nbsp; </TD>
  </TR></TBODY></TABLE>
<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor=#ff0000 vAlign=top class="OraColumnHeader"><IMG alt="" border=0 height=17 src="images/topcurl.gif" width=30></TD>
    <TD vAlign=top width="100%">
      <TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
        <TBODY>
        <TR>
          <TD bgColor=#000000 height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        <TR>
          <TD bgColor=#9a9c9a height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        <TR>
          <TD bgColor=#b3b4b3 height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        </TBODY>
      </TABLE>
    </TD>
  </TR>
  </TBODY>
</TABLE>
<TABLE width="100%" border="0" cellspacing="0" cellpadding="0">
  <TR>
    <TD width="29%" valign="top"> 
      <TABLE width="77%" border="0" cellspacing="0" cellpadding="0">
        <TR> 
          <TD width="10%" class="OraCellText"><IMG src="images/green_d_arrow.gif" width="10" height="10"></TD>
          <TD width="90%" class="OraCellText">Navigation goes here </TD>
        </TR>
        <TR> 
          <TD width="10%" class="OraCellText"><IMG src="images/green_r_arrow.gif" width="10" height="10"></TD>
          <TD width="90%" class="OraCellText">Navigation Item</TD>
        </TR>
      </TABLE>
    </TD>
    <TD width="71%">
      <DIV align="center">
	    <!-- Data Area Generated by Reports Developer -->
<rw:dataArea id="MGORDERDATEGRPFR157">
<table class="OraTable">
<caption>  </caption>
 <!-- Header -->
 <thead>
  <tr>
   <th <rw:id id="HBORDERDATE157" asArray="no"/> class="OraColumnHeader"> Order Date </th>
   <th <rw:id id="HBCustomerName157" asArray="no"/> class="OraColumnHeader"> Customer
Name </th>
   <th <rw:id id="HBEmployeeName157" asArray="no"/> class="OraColumnHeader"> Employee
Name </th>
   <th <rw:id id="HBITEMNAME157" asArray="no"/> class="OraColumnHeader"> Item Name </th>
   <th <rw:id id="HBITEMQUANTITY157" asArray="no"/> class="OraColumnHeader"> Item Quantity </th>
   <th <rw:id id="HBITEMPRICE157" asArray="no"/> class="OraColumnHeader"> Item Price </th>
   <th <rw:id id="HBTOTALPRICE157" asArray="no"/> class="OraColumnHeader"> Totalprice </th>
  </tr>
 </thead>
 <!-- Body -->
 <tbody>
  <rw:foreach id="RGORDERDATE1571" src="G_ORDER_DATE">
   <tr>
    <td <rw:headers id="HFORDERDATE157" src="HBORDERDATE157"/> class="OraCellText"><rw:field id="FORDERDATE157" src="ORDER_DATE" nullValue="&nbsp;"> F_ORDER_DATE </rw:field></td>
    <td <rw:headers id="HFCustomerName157" src="HBCustomerName157"/> class="OraCellText"><rw:field id="FCustomerName157" src="Customer_Name" nullValue="&nbsp;"> F_Customer_Name </rw:field></td>
    <td <rw:headers id="HFEmployeeName157" src="HBEmployeeName157"/> class="OraCellText"><rw:field id="FEmployeeName157" src="Employee_Name" nullValue="&nbsp;"> F_Employee_Name </rw:field></td>
    <td <rw:headers id="HFITEMNAME157" src="HBITEMNAME157"/> class="OraCellText"><rw:field id="FITEMNAME157" src="ITEM_NAME" nullValue="&nbsp;"> F_ITEM_NAME </rw:field></td>
    <td <rw:headers id="HFITEMQUANTITY157" src="HBITEMQUANTITY157"/> class="OraCellNumber"><rw:field id="FITEMQUANTITY157" src="ITEM_QUANTITY" nullValue="&nbsp;"> F_ITEM_QUANTITY </rw:field></td>
    <td <rw:headers id="HFITEMPRICE157" src="HBITEMPRICE157"/> class="OraCellNumber"><rw:field id="FITEMPRICE157" src="ITEM_PRICE" nullValue="&nbsp;"> F_ITEM_PRICE </rw:field></td>
    <td <rw:headers id="HFTOTALPRICE157" src="HBTOTALPRICE157"/> class="OraCellNumber"><rw:field id="FTOTALPRICE157" src="TOTALPRICE" nullValue="&nbsp;"> F_TOTALPRICE </rw:field></td>
   </tr>
  </rw:foreach>
 </tbody>
 <!-- Report Level Summary -->
 <tr>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <td <rw:headers id="HFSumTOTALPRICEPerReport157" src="HBTOTALPRICE157"/> class="OraTotalNumber">Total: <rw:field id="FSumTOTALPRICEPerReport157" src="SumTOTALPRICEPerReport" nullValue="&nbsp;"> F_SumTOTALPRICEPerReport </rw:field></td>
 </tr>
</table>
</rw:dataArea> <!-- id="MGORDERDATEGRPFR157" -->
<!-- End of Data Area Generated by Reports Developer -->

	  </DIV>
    </TD>
  </TR>
</TABLE>
<P><BR>
</P>
<TD align=middle vAlign=top width="100%">&nbsp;</TD>
<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor=#000000 colSpan=2><IMG alt=" " border=0 height=1 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor=#ff0000 colSpan=2 class="OraColumnHeader"><IMG alt=" " border=0 height=4 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor=#000000 colSpan=2><IMG alt=" " border=0 height=1 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor=#ffffff>&nbsp;</TD>
    <TD align=right bgColor=#ffffff>&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>
<p>&nbsp;</p>
</BODY>
</HTML>
<!--
</rw:report>
-->

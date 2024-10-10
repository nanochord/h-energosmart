<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.2.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A4L-LOC" library_version="1">
<wire x1="256.54" y1="3.81" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="256.54" y1="8.89" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="256.54" y1="13.97" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="256.54" y1="19.05" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="3.81" x2="161.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="24.13" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="215.265" y1="24.13" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="246.38" y1="3.81" x2="246.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="215.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="215.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<text x="217.17" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="217.17" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="230.505" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="216.916" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="260.35" y2="179.07" columns="6" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A4L-LOC" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A4L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="switch" urn="urn:adsk.eagle:library:380">
<description>&lt;b&gt;Switches&lt;/b&gt;&lt;p&gt;
Marquardt, Siemens, C&amp;K, ITT, and others&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="ELMA-01-1X12" library_version="1">
<description>&lt;b&gt;ELMA Rotary Switsh Type 01&lt;/b&gt;&lt;p&gt;
Source: rotary_switches_type_01_001.pdf</description>
<wire x1="-7.3" y1="5.075" x2="-5.925" y2="6.625" width="0.2032" layer="21" curve="-13.369398"/>
<wire x1="-8.8594" y1="0.745" x2="-8.4437" y2="2.7749" width="0.2032" layer="21" curve="-13.369957"/>
<wire x1="-8.045" y1="-3.7844" x2="-8.6999" y2="-1.8187" width="0.2032" layer="21" curve="-13.36905"/>
<wire x1="-5.075" y1="-7.3" x2="-6.625" y2="-5.925" width="0.2032" layer="21" curve="-13.369598"/>
<wire x1="-0.745" y1="-8.8594" x2="-2.7749" y2="-8.4437" width="0.2032" layer="21" curve="-13.370416"/>
<wire x1="3.7844" y1="-8.045" x2="1.8187" y2="-8.6999" width="0.2032" layer="21" curve="-13.368892"/>
<wire x1="7.3" y1="-5.075" x2="5.925" y2="-6.625" width="0.2032" layer="21" curve="-13.369398"/>
<wire x1="8.8594" y1="-0.745" x2="8.4437" y2="-2.7749" width="0.2032" layer="21" curve="-13.369957"/>
<wire x1="8.045" y1="3.7844" x2="8.6999" y2="1.8187" width="0.2032" layer="21" curve="-13.36905"/>
<wire x1="5.075" y1="7.3" x2="6.625" y2="5.925" width="0.2032" layer="21" curve="-13.369798"/>
<wire x1="0.745" y1="8.8594" x2="2.7749" y2="8.4437" width="0.2032" layer="21" curve="-13.370416"/>
<wire x1="-3.7844" y1="8.045" x2="-1.8187" y2="8.6999" width="0.2032" layer="21" curve="-13.368892"/>
<wire x1="1.275" y1="-3.8" x2="3.725" y2="-1.45" width="0.2032" layer="21" curve="-309.966213"/>
<circle x="0" y="0" radius="8.9" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="4" width="0.2032" layer="51"/>
<circle x="0" y="7.5" radius="1" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.9" width="0.2032" layer="21"/>
<pad name="1" x="-0.5098" y="8.3344" drill="1.3" diameter="2.1844"/>
<pad name="2" x="3.7257" y="7.4727" drill="1.3" diameter="2.1844" rot="R330"/>
<pad name="3" x="6.9629" y="4.6086" drill="1.3" diameter="2.1844" rot="R300"/>
<pad name="4" x="8.3343" y="0.5097" drill="1.3" diameter="2.1844" rot="R270"/>
<pad name="5" x="7.4725" y="-3.7257" drill="1.3" diameter="2.1844" rot="R240"/>
<pad name="6" x="4.6085" y="-6.9628" drill="1.3" diameter="2.1844" rot="R210"/>
<pad name="7" x="0.5098" y="-8.3344" drill="1.3" diameter="2.1844" rot="R180"/>
<pad name="8" x="-3.7257" y="-7.4727" drill="1.3" diameter="2.1844" rot="R150"/>
<pad name="9" x="-6.9629" y="-4.6086" drill="1.3" diameter="2.1844" rot="R120"/>
<pad name="10" x="-8.3343" y="-0.5097" drill="1.3" diameter="2.1844" rot="R90"/>
<pad name="11" x="-7.4725" y="3.7257" drill="1.3" diameter="2.1844" rot="R60"/>
<pad name="12" x="-4.6085" y="6.9628" drill="1.3" diameter="2.1844" rot="R30"/>
<pad name="A" x="2.6517" y="-2.6517" drill="1.5" diameter="2.54" rot="R270"/>
<text x="-8.255" y="8.89" size="1.27" layer="25">&gt;NAME</text>
<text x="-8.255" y="-11.43" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="DS-A112" library_version="1">
<wire x1="-19.05" y1="1.905" x2="-17.78" y2="1.905" width="0.254" layer="94"/>
<wire x1="-19.05" y1="1.905" x2="-19.05" y2="0" width="0.254" layer="94"/>
<wire x1="-19.05" y1="-1.905" x2="-20.32" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-19.05" y1="0" x2="-17.145" y2="0" width="0.1524" layer="94"/>
<wire x1="-19.05" y1="0" x2="-19.05" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-16.51" y1="0" x2="-16.002" y2="0" width="0.1524" layer="94"/>
<wire x1="-14.986" y1="0" x2="-14.605" y2="0" width="0.1524" layer="94"/>
<wire x1="-13.97" y1="0" x2="-12.827" y2="0" width="0.1524" layer="94"/>
<wire x1="-16.002" y1="0" x2="-15.494" y2="-0.762" width="0.1524" layer="94"/>
<wire x1="-15.494" y1="-0.762" x2="-14.986" y2="0" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="3.175" x2="-10.16" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="3.175" x2="-7.62" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="3.175" x2="-5.08" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="-5.08" x2="-10.16" y2="-3.175" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="-3.175" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="-3.175" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="-10.16" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="-5.08" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-2.54" y2="-3.175" width="0.1524" layer="94"/>
<wire x1="0" y1="-5.08" x2="0" y2="-3.175" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="3.175" x2="-2.54" y2="5.08" width="0.1524" layer="94"/>
<wire x1="0" y1="3.175" x2="0" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="-2.54" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="0" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-12.7" y1="5.08" x2="-12.7" y2="3.175" width="0.1524" layer="94"/>
<wire x1="-12.7" y1="1.905" x2="-12.7" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-3.175" x2="-12.7" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="5.08" x2="-12.7" y2="5.08" width="0.1524" layer="94"/>
<wire x1="0" y1="5.08" x2="2.54" y2="5.08" width="0.1524" layer="94"/>
<wire x1="2.54" y1="3.175" x2="2.54" y2="5.08" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="2.54" y2="-3.175" width="0.1524" layer="94"/>
<wire x1="5.08" y1="3.175" x2="5.08" y2="5.08" width="0.1524" layer="94"/>
<wire x1="7.62" y1="3.175" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<wire x1="10.16" y1="3.175" x2="10.16" y2="5.08" width="0.1524" layer="94"/>
<wire x1="12.7" y1="3.175" x2="12.7" y2="5.08" width="0.1524" layer="94"/>
<wire x1="15.24" y1="3.175" x2="15.24" y2="5.08" width="0.1524" layer="94"/>
<wire x1="2.54" y1="5.08" x2="5.08" y2="5.08" width="0.1524" layer="94"/>
<wire x1="5.08" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<wire x1="7.62" y1="5.08" x2="10.16" y2="5.08" width="0.1524" layer="94"/>
<wire x1="10.16" y1="5.08" x2="12.7" y2="5.08" width="0.1524" layer="94"/>
<wire x1="12.7" y1="5.08" x2="15.24" y2="5.08" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="5.08" y2="-3.175" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="-3.175" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="10.16" y2="-3.175" width="0.1524" layer="94"/>
<wire x1="12.7" y1="-5.08" x2="12.7" y2="-3.175" width="0.1524" layer="94"/>
<wire x1="15.24" y1="-5.08" x2="15.24" y2="-3.175" width="0.1524" layer="94"/>
<circle x="-7.62" y="5.08" radius="0.254" width="0.254" layer="94"/>
<circle x="-5.08" y="5.08" radius="0.254" width="0.254" layer="94"/>
<circle x="0" y="5.08" radius="0.254" width="0.254" layer="94"/>
<circle x="-12.7" y="5.08" radius="0.254" width="0.254" layer="94"/>
<circle x="-10.16" y="5.08" radius="0.254" width="0.254" layer="94"/>
<circle x="-12.7" y="2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="-10.16" y="2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="-7.62" y="2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="-12.7" y="-2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="-10.16" y="-2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="-7.62" y="-2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="-2.54" y="5.08" radius="0.254" width="0.254" layer="94"/>
<circle x="-5.08" y="2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="-2.54" y="2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="-5.08" y="-2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="-2.54" y="-2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="-2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="2.54" y="5.08" radius="0.254" width="0.254" layer="94"/>
<circle x="2.54" y="2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="2.54" y="-2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="5.08" y="2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="7.62" y="2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="10.16" y="2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="12.7" y="2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="15.24" y="2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="5.08" y="5.08" radius="0.254" width="0.254" layer="94"/>
<circle x="7.62" y="5.08" radius="0.254" width="0.254" layer="94"/>
<circle x="10.16" y="5.08" radius="0.254" width="0.254" layer="94"/>
<circle x="12.7" y="5.08" radius="0.254" width="0.254" layer="94"/>
<circle x="5.08" y="-2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="7.62" y="-2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="10.16" y="-2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="12.7" y="-2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="15.24" y="-2.54" radius="0.635" width="0.254" layer="94"/>
<text x="-18.415" y="3.81" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="-15.875" y="3.81" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<text x="-13.081" y="-1.397" size="1.27" layer="94" rot="R90">1</text>
<text x="-9.525" y="-0.635" size="1.27" layer="94" rot="R90">2</text>
<text x="-6.985" y="-0.635" size="1.27" layer="94" rot="R90">3</text>
<text x="-4.445" y="-0.635" size="1.27" layer="94" rot="R90">4</text>
<text x="-1.905" y="-0.635" size="1.27" layer="94" rot="R90">5</text>
<text x="0.635" y="-0.635" size="1.27" layer="94" rot="R90">6</text>
<text x="3.175" y="-0.635" size="1.27" layer="94" rot="R90">7</text>
<text x="5.715" y="-0.635" size="1.27" layer="94" rot="R90">8</text>
<text x="8.255" y="-0.635" size="1.27" layer="94" rot="R90">9</text>
<text x="10.795" y="-1.016" size="1.27" layer="94" rot="R90">10</text>
<text x="13.335" y="-0.889" size="1.27" layer="94" rot="R90">11</text>
<text x="15.875" y="-0.889" size="1.27" layer="94" rot="R90">12</text>
<pin name="1" x="-12.7" y="-7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="A" x="-12.7" y="7.62" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="2" x="-10.16" y="-7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="3" x="-7.62" y="-7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="4" x="-5.08" y="-7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="5" x="-2.54" y="-7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="6" x="0" y="-7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="7" x="2.54" y="-7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="8" x="5.08" y="-7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="9" x="7.62" y="-7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="10" x="10.16" y="-7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="11" x="12.7" y="-7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="12" x="15.24" y="-7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ELMA-01-1X12" prefix="S" library_version="1">
<description>&lt;b&gt;Rotary Switches Type 01&lt;/b&gt;&lt;p&gt;
Source: http://www.elma.com/files/products/rotary_components/pdfs/rotary_switches_type_01_002.pdf</description>
<gates>
<gate name="G$1" symbol="DS-A112" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ELMA-01-1X12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
<connect gate="G$1" pin="A" pad="A"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead" urn="urn:adsk.eagle:library:325">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X12" library_version="1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="8.255" y1="1.27" x2="9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="1.27" x2="12.065" y2="1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="1.27" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-0.635" x2="12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="-1.27" x2="10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-1.27" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-1.27" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-1.27" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="1.27" x2="-13.335" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="1.27" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="0.635" x2="-12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-0.635" x2="-13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="0.635" x2="-12.065" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="1.27" x2="-10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="1.27" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-1.27" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-1.27" x2="-12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0.635" x2="-15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="1.27" x2="-15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-0.635" x2="-14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-1.27" x2="-14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="13.335" y2="1.27" width="0.1524" layer="21"/>
<wire x1="13.335" y1="1.27" x2="14.605" y2="1.27" width="0.1524" layer="21"/>
<wire x1="14.605" y1="1.27" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0.635" x2="15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-0.635" x2="14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="14.605" y1="-1.27" x2="13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="13.335" y1="-1.27" x2="12.7" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-13.97" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="13.97" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-15.3162" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-15.24" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="11.176" y1="-0.254" x2="11.684" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-11.684" y1="-0.254" x2="-11.176" y2="0.254" layer="51"/>
<rectangle x1="-14.224" y1="-0.254" x2="-13.716" y2="0.254" layer="51"/>
<rectangle x1="13.716" y1="-0.254" x2="14.224" y2="0.254" layer="51"/>
</package>
<package name="1X12/90" library_version="1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-15.24" y1="-1.905" x2="-12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-1.905" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="0.635" x2="-15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0.635" x2="-15.24" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="6.985" x2="-13.97" y2="1.27" width="0.762" layer="21"/>
<wire x1="-12.7" y1="-1.905" x2="-10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="6.985" x2="-11.43" y2="1.27" width="0.762" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="6.985" x2="-8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="6.985" x2="-6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="6.985" x2="6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="6.985" x2="8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="11.43" y1="6.985" x2="11.43" y2="1.27" width="0.762" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="15.24" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-1.905" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0.635" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="13.97" y1="6.985" x2="13.97" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-13.97" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-11.43" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-8.89" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="8.89" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="11.43" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="13.97" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-15.875" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="17.145" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-14.351" y1="0.635" x2="-13.589" y2="1.143" layer="21"/>
<rectangle x1="-11.811" y1="0.635" x2="-11.049" y2="1.143" layer="21"/>
<rectangle x1="-9.271" y1="0.635" x2="-8.509" y2="1.143" layer="21"/>
<rectangle x1="-6.731" y1="0.635" x2="-5.969" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="5.969" y1="0.635" x2="6.731" y2="1.143" layer="21"/>
<rectangle x1="8.509" y1="0.635" x2="9.271" y2="1.143" layer="21"/>
<rectangle x1="11.049" y1="0.635" x2="11.811" y2="1.143" layer="21"/>
<rectangle x1="13.589" y1="0.635" x2="14.351" y2="1.143" layer="21"/>
<rectangle x1="-14.351" y1="-2.921" x2="-13.589" y2="-1.905" layer="21"/>
<rectangle x1="-11.811" y1="-2.921" x2="-11.049" y2="-1.905" layer="21"/>
<rectangle x1="-9.271" y1="-2.921" x2="-8.509" y2="-1.905" layer="21"/>
<rectangle x1="-6.731" y1="-2.921" x2="-5.969" y2="-1.905" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
<rectangle x1="5.969" y1="-2.921" x2="6.731" y2="-1.905" layer="21"/>
<rectangle x1="8.509" y1="-2.921" x2="9.271" y2="-1.905" layer="21"/>
<rectangle x1="11.049" y1="-2.921" x2="11.811" y2="-1.905" layer="21"/>
<rectangle x1="13.589" y1="-2.921" x2="14.351" y2="-1.905" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="PINHD12" library_version="1">
<wire x1="-6.35" y1="-17.78" x2="1.27" y2="-17.78" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-17.78" x2="1.27" y2="15.24" width="0.4064" layer="94"/>
<wire x1="1.27" y1="15.24" x2="-6.35" y2="15.24" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="15.24" x2="-6.35" y2="-17.78" width="0.4064" layer="94"/>
<text x="-6.35" y="15.875" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-20.32" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="7" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="9" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="-2.54" y="-10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="11" x="-2.54" y="-12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="12" x="-2.54" y="-15.24" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X12" prefix="JP" uservalue="yes" library_version="1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PINHD12" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X12/90">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="switch-omron" urn="urn:adsk.eagle:library:377">
<description>&lt;b&gt;Omron Switches&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="B3F/40L3" library_version="1">
<description>&lt;b&gt;OMRON SWITCH&lt;/b&gt;&lt;p&gt;
with LED 3mm</description>
<wire x1="7.62" y1="0.889" x2="7.62" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-7.62" x2="0.889" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-7.62" x2="3.429" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.889" x2="-5.08" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.889" x2="-7.62" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="0.889" y1="7.62" x2="1.524" y2="6.985" width="0.1524" layer="21"/>
<wire x1="3.429" y1="5.08" x2="5.08" y2="3.429" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.524" x2="7.62" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.889" x2="-6.985" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.429" x2="-3.429" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-6.985" x2="-0.889" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="0" y1="1.905" x2="1.905" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="1.905" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="-1.905" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="1.905" x2="-1.905" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="1.651" x2="1.651" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.651" x2="-1.651" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="1.651" x2="-1.651" y2="0" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-3.429" x2="5.334" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="5.334" y1="-3.683" x2="3.683" y2="-5.334" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-5.334" x2="3.429" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-5.08" x2="7.62" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="5.461" y1="-2.667" x2="5.588" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="5.842" y1="-3.048" x2="7.493" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.27" x2="7.62" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="7.493" y1="-1.397" x2="7.366" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="7.493" y1="-1.397" x2="7.62" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="7.112" y1="-1.016" x2="5.461" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="5.588" y1="-2.794" x2="7.239" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="5.588" y1="-2.794" x2="5.715" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="7.239" y1="-1.143" x2="7.112" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="7.112" y1="-1.016" x2="7.112" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="5.588" y1="-2.667" x2="7.112" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="7.366" y1="-1.27" x2="5.715" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="7.366" y1="-1.27" x2="7.239" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.921" x2="5.842" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="7.366" y1="-1.27" x2="7.366" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="7.366" y1="-1.397" x2="5.842" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="3.048" y1="-5.842" x2="2.921" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="2.667" y1="-5.461" x2="1.016" y2="-7.112" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-7.62" x2="0.889" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-7.112" x2="1.143" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="1.397" y1="-7.493" x2="3.048" y2="-5.842" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-5.715" x2="1.27" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-5.715" x2="2.794" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-7.366" x2="1.397" y2="-7.493" width="0.1524" layer="21"/>
<wire x1="1.397" y1="-7.493" x2="1.397" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-5.842" x2="1.397" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-7.239" x2="2.794" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-7.239" x2="1.27" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="2.794" y1="-5.588" x2="2.667" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-7.239" x2="1.143" y2="-7.112" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-7.112" x2="2.667" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-7.62" x2="1.397" y2="-7.493" width="0.1524" layer="21"/>
<wire x1="1.397" y1="-7.493" x2="1.016" y2="-7.112" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="5.842" x2="-2.921" y2="5.715" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="5.461" x2="-1.016" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="7.62" x2="-0.889" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="7.62" x2="0.889" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="7.493" x2="-3.048" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="5.715" x2="-1.27" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="5.715" x2="-2.794" y2="5.588" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="7.366" x2="-1.397" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="7.493" x2="-1.397" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="5.842" x2="-1.397" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="7.239" x2="-2.794" y2="5.588" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="7.239" x2="-1.27" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="5.588" x2="-2.667" y2="5.461" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="7.239" x2="-1.143" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="7.112" x2="-2.667" y2="5.588" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="7.62" x2="-1.397" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="7.112" x2="-1.143" y2="7.239" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="2.667" x2="-5.588" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="3.048" x2="-7.493" y2="1.397" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="1.27" x2="-7.62" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-7.493" y1="1.397" x2="-7.366" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-7.493" y1="1.397" x2="-7.62" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-7.112" y1="1.016" x2="-5.461" y2="2.667" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="2.794" x2="-7.239" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="2.794" x2="-5.715" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-7.239" y1="1.143" x2="-7.112" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-7.112" y1="1.016" x2="-7.112" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="2.667" x2="-7.112" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="1.27" x2="-5.715" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="1.27" x2="-7.239" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.921" x2="-5.842" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="1.27" x2="-7.366" y2="1.397" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="1.397" x2="-5.842" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.429" x2="-5.334" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.429" x2="-3.429" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="5.334" x2="-5.334" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="5.334" x2="-3.429" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="5.08" x2="-0.889" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="-5.715" x2="-2.921" y2="-5.842" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="-5.715" x2="-3.429" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-5.969" x2="-2.413" y2="-6.604" width="0.1524" layer="51"/>
<wire x1="-2.413" y1="-6.604" x2="-2.286" y2="-6.477" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="-6.985" x2="-2.159" y2="-6.35" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="-6.35" x2="-2.794" y2="-5.715" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="-5.842" x2="-2.286" y2="-6.477" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="-5.842" x2="-3.048" y2="-5.969" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-6.477" x2="-2.159" y2="-6.35" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="-6.35" x2="-2.286" y2="-6.35" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="-5.842" x2="-2.286" y2="-6.35" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="-5.842" x2="-2.921" y2="-5.969" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="-5.969" x2="-2.413" y2="-6.477" width="0.1524" layer="51"/>
<wire x1="-5.08" y1="-3.429" x2="-5.715" y2="-2.794" width="0.1524" layer="51"/>
<wire x1="-6.35" y1="-2.159" x2="-6.477" y2="-2.286" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="-2.413" x2="-5.969" y2="-3.048" width="0.1524" layer="51"/>
<wire x1="-5.969" y1="-3.048" x2="-5.842" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="-2.286" x2="-5.842" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="-2.286" x2="-6.604" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="-5.842" y1="-2.921" x2="-5.715" y2="-2.794" width="0.1524" layer="51"/>
<wire x1="-5.715" y1="-2.794" x2="-5.842" y2="-2.794" width="0.1524" layer="51"/>
<wire x1="-6.35" y1="-2.286" x2="-5.842" y2="-2.794" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="-2.286" x2="-6.477" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="-2.413" x2="-5.969" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="-5.715" y1="-2.794" x2="-6.35" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-6.35" y1="-2.159" x2="-6.985" y2="-1.524" width="0.1524" layer="51"/>
<wire x1="6.35" y1="2.159" x2="6.477" y2="2.286" width="0.1524" layer="51"/>
<wire x1="6.35" y1="2.159" x2="6.985" y2="1.524" width="0.1524" layer="51"/>
<wire x1="6.604" y1="2.413" x2="5.969" y2="3.048" width="0.1524" layer="51"/>
<wire x1="5.969" y1="3.048" x2="5.842" y2="2.921" width="0.1524" layer="51"/>
<wire x1="5.715" y1="2.794" x2="6.35" y2="2.159" width="0.1524" layer="51"/>
<wire x1="6.477" y1="2.286" x2="5.842" y2="2.921" width="0.1524" layer="51"/>
<wire x1="6.477" y1="2.286" x2="6.604" y2="2.413" width="0.1524" layer="51"/>
<wire x1="5.842" y1="2.921" x2="5.715" y2="2.794" width="0.1524" layer="51"/>
<wire x1="5.715" y1="2.794" x2="5.842" y2="2.794" width="0.1524" layer="51"/>
<wire x1="6.35" y1="2.286" x2="5.842" y2="2.794" width="0.1524" layer="51"/>
<wire x1="6.477" y1="2.286" x2="6.477" y2="2.413" width="0.1524" layer="51"/>
<wire x1="6.477" y1="2.413" x2="5.969" y2="2.921" width="0.1524" layer="51"/>
<wire x1="6.35" y1="2.159" x2="5.08" y2="3.429" width="0.1524" layer="51"/>
<wire x1="2.794" y1="5.715" x2="2.921" y2="5.842" width="0.1524" layer="51"/>
<wire x1="2.794" y1="5.715" x2="3.429" y2="5.08" width="0.1524" layer="51"/>
<wire x1="3.048" y1="5.969" x2="2.413" y2="6.604" width="0.1524" layer="51"/>
<wire x1="2.413" y1="6.604" x2="2.286" y2="6.477" width="0.1524" layer="51"/>
<wire x1="2.921" y1="5.842" x2="2.286" y2="6.477" width="0.1524" layer="51"/>
<wire x1="2.921" y1="5.842" x2="3.048" y2="5.969" width="0.1524" layer="51"/>
<wire x1="2.286" y1="6.477" x2="2.159" y2="6.35" width="0.1524" layer="51"/>
<wire x1="2.159" y1="6.35" x2="2.286" y2="6.35" width="0.1524" layer="51"/>
<wire x1="2.794" y1="5.842" x2="2.286" y2="6.35" width="0.1524" layer="51"/>
<wire x1="2.921" y1="5.842" x2="2.921" y2="5.969" width="0.1524" layer="51"/>
<wire x1="2.921" y1="5.969" x2="2.413" y2="6.477" width="0.1524" layer="51"/>
<wire x1="2.794" y1="5.715" x2="2.159" y2="6.35" width="0.1524" layer="51"/>
<wire x1="2.159" y1="6.35" x2="1.524" y2="6.985" width="0.1524" layer="51"/>
<wire x1="0.127" y1="3.683" x2="1.778" y2="5.334" width="0.1524" layer="51"/>
<wire x1="3.683" y1="0.127" x2="5.334" y2="1.778" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-3.683" x2="-1.397" y2="-4.826" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-1.905" x2="-4.826" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="-1.397" x2="-3.683" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-2.667" y1="-3.556" x2="-1.397" y2="-4.826" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-4.826" x2="-1.905" y2="-5.334" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="-2.667" x2="-4.826" y2="-1.397" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-3.81" x2="-3.556" y2="-2.667" width="0.1524" layer="51"/>
<wire x1="-5.8928" y1="6.0452" x2="-6.1976" y2="6.0452" width="0.0508" layer="21"/>
<wire x1="-7.0532" y1="4.9022" x2="-5.0372" y2="4.9022" width="0.1016" layer="51" curve="82.817482"/>
<wire x1="-7.0407" y1="4.572" x2="-5.0497" y2="4.572" width="0.1016" layer="51" curve="68.096926"/>
<wire x1="-7.0532" y1="7.1882" x2="-5.0372" y2="7.1882" width="0.1016" layer="51" curve="-82.817482"/>
<wire x1="-7.0407" y1="7.5184" x2="-5.0497" y2="7.5184" width="0.1016" layer="51" curve="-68.096926"/>
<wire x1="-6.7516" y1="5.5054" x2="-6.0452" y2="5.1562" width="0.1016" layer="51" curve="52.615666"/>
<wire x1="-6.4312" y1="5.715" x2="-6.0452" y2="5.5372" width="0.1016" layer="51" curve="49.453145"/>
<wire x1="-7.0532" y1="7.1882" x2="-7.0532" y2="4.9022" width="0.0508" layer="21" curve="97.182518"/>
<wire x1="-7.0407" y1="7.5184" x2="-7.0407" y2="4.572" width="0.1524" layer="21" curve="111.903074"/>
<wire x1="-6.5532" y1="6.0452" x2="-6.4312" y2="5.715" width="0.1524" layer="21" curve="40.543542"/>
<wire x1="-6.9342" y1="6.0452" x2="-6.7516" y2="5.5054" width="0.1524" layer="21" curve="37.386266"/>
<wire x1="-6.0452" y1="5.8928" x2="-6.0452" y2="6.1976" width="0.0508" layer="21"/>
<wire x1="-5.0372" y1="4.9022" x2="-5.0372" y2="7.1882" width="0.0508" layer="21" curve="97.182518"/>
<wire x1="-5.0497" y1="4.572" x2="-5.0497" y2="7.5184" width="0.1524" layer="21" curve="111.903074"/>
<wire x1="-5.3388" y1="6.585" x2="-5.1562" y2="6.0452" width="0.1524" layer="21" curve="-37.386266"/>
<wire x1="-5.6592" y1="6.3754" x2="-5.5372" y2="6.0452" width="0.1524" layer="21" curve="-40.543542"/>
<wire x1="-6.0452" y1="6.5532" x2="-5.6592" y2="6.3754" width="0.1016" layer="51" curve="-49.453145"/>
<wire x1="-6.0452" y1="6.9342" x2="-5.3388" y2="6.585" width="0.1016" layer="51" curve="-52.615666"/>
<wire x1="-6.8326" y1="7.62" x2="-5.2578" y2="7.62" width="0.1016" layer="51"/>
<circle x="0" y="0" radius="3.556" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.1524" layer="21"/>
<circle x="-1.397" y="-4.826" radius="0.127" width="0.1524" layer="51"/>
<circle x="-4.826" y="-1.397" radius="0.127" width="0.1524" layer="51"/>
<pad name="1" x="-6.1976" y="-2.6416" drill="1.1938" shape="long"/>
<pad name="3" x="-2.6416" y="-6.1976" drill="1.1938" shape="long"/>
<pad name="2" x="2.6416" y="6.1976" drill="1.1938" shape="long"/>
<pad name="4" x="6.1976" y="2.6416" drill="1.1938" shape="long"/>
<pad name="A" x="-6.0452" y="4.7752" drill="0.8128" shape="long"/>
<pad name="K" x="-6.0452" y="7.3152" drill="0.8128" shape="long"/>
<text x="5.08" y="-5.842" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.81" y="-7.62" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-5.4356" y="8.4582" size="1.016" layer="21" ratio="12" rot="R90">K</text>
<text x="-6.477" y="-1.143" size="1.27" layer="21" ratio="10">1</text>
<text x="0" y="5.588" size="1.27" layer="21" ratio="10">2</text>
<text x="-1.143" y="-6.731" size="1.27" layer="21" ratio="10">3</text>
<text x="5.715" y="-0.127" size="1.27" layer="21" ratio="10">4</text>
<text x="-4.5212" y="8.0772" size="1.27" layer="25" ratio="10">LED3</text>
<hole x="3.175" y="-3.175" drill="1.8034"/>
<hole x="-3.175" y="3.175" drill="1.8034"/>
</package>
</packages>
<symbols>
<symbol name="TS-LED" library_version="1">
<wire x1="3.81" y1="1.27" x2="2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-1.27" x2="1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="3.81" y1="-1.27" x2="2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.27" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="3.175" y1="-1.905" x2="4.445" y2="-3.175" width="0.1524" layer="94"/>
<wire x1="4.445" y1="-3.175" x2="4.445" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="4.445" y1="-3.175" x2="3.81" y2="-3.175" width="0.1524" layer="94"/>
<wire x1="3.175" y1="-3.81" x2="4.445" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="4.445" y1="-5.08" x2="4.445" y2="-4.445" width="0.1524" layer="94"/>
<wire x1="4.445" y1="-5.08" x2="3.81" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="3.81" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="1.27" width="0.1524" layer="94"/>
<wire x1="2.54" y1="1.27" x2="1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="1.905" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-6.985" y1="1.905" x2="-5.715" y2="1.905" width="0.254" layer="94"/>
<wire x1="-6.985" y1="-1.905" x2="-5.715" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-6.985" y1="1.905" x2="-6.985" y2="0" width="0.254" layer="94"/>
<wire x1="-6.985" y1="0" x2="-6.985" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-4.445" y2="0" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="94"/>
<wire x1="-6.985" y1="0" x2="-5.715" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-3.81" y2="1.905" width="0.254" layer="94"/>
<circle x="-2.54" y="2.54" radius="0.127" width="0.4064" layer="94"/>
<circle x="-2.54" y="-2.54" radius="0.127" width="0.4064" layer="94"/>
<text x="-8.89" y="-1.905" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="-6.35" y="3.175" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="C" x="2.54" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="A" x="2.54" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="P" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="2" rot="R90"/>
<pin name="S" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="S1" x="0" y="5.08" visible="pad" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="P1" x="0" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="2" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="40/L3" prefix="S" uservalue="yes" library_version="1">
<description>&lt;b&gt;OMRON SWITCH&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="TS-LED" x="0" y="0"/>
</gates>
<devices>
<device name="" package="B3F/40L3">
<connects>
<connect gate="1" pin="A" pad="A"/>
<connect gate="1" pin="C" pad="K"/>
<connect gate="1" pin="P" pad="3"/>
<connect gate="1" pin="P1" pad="4"/>
<connect gate="1" pin="S" pad="1"/>
<connect gate="1" pin="S1" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="A4L-LOC" device=""/>
<part name="S301" library="switch" library_urn="urn:adsk.eagle:library:380" deviceset="ELMA-01-1X12" device="" value="ROTARY SW"/>
<part name="JP7" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X12" device="" value="WCU"/>
<part name="S302" library="switch-omron" library_urn="urn:adsk.eagle:library:377" deviceset="40/L3" device="" value="POWER"/>
<part name="S303" library="switch-omron" library_urn="urn:adsk.eagle:library:377" deviceset="40/L3" device="" value="START"/>
<part name="S304" library="switch-omron" library_urn="urn:adsk.eagle:library:377" deviceset="40/L3" device="" value="SELECT"/>
<part name="S305" library="switch-omron" library_urn="urn:adsk.eagle:library:377" deviceset="40/L3" device="" value="RETURN"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="167.64" y="12.7" size="2.54" layer="94">HAJDU Energo Smart</text>
<text x="167.64" y="7.62" size="1.778" layer="94">2017.6.1</text>
<text x="218.44" y="20.32" size="2.1844" layer="94">KEYPAD</text>
<text x="187.96" y="78.74" size="1.778" layer="94">GND</text>
<text x="187.96" y="106.68" size="1.778" layer="94">ROTSW1</text>
<text x="187.96" y="104.14" size="1.778" layer="94">ROTSW2</text>
<text x="187.96" y="101.6" size="1.778" layer="94">ROTSW3</text>
<text x="187.96" y="99.06" size="1.778" layer="94">PB_PW</text>
<text x="187.96" y="96.52" size="1.778" layer="94">PB_ST</text>
<text x="187.96" y="93.98" size="1.778" layer="94">PB_SEL</text>
<text x="187.96" y="91.44" size="1.778" layer="94">PB_RET</text>
<text x="187.96" y="88.9" size="1.778" layer="94">LED_PW</text>
<text x="187.96" y="86.36" size="1.778" layer="94">LED_ST</text>
<text x="187.96" y="83.82" size="1.778" layer="94">LED_SEL</text>
<text x="187.96" y="81.28" size="1.778" layer="94">LED_RET</text>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="S301" gate="G$1" x="114.3" y="121.92"/>
<instance part="JP7" gate="G$1" x="205.74" y="93.98"/>
<instance part="S302" gate="1" x="58.42" y="66.04"/>
<instance part="S303" gate="1" x="81.28" y="66.04"/>
<instance part="S304" gate="1" x="101.6" y="66.04"/>
<instance part="S305" gate="1" x="121.92" y="66.04"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$5" class="0">
<segment>
<pinref part="S302" gate="1" pin="C"/>
<wire x1="60.96" y1="60.96" x2="60.96" y2="55.88" width="0.1524" layer="91"/>
<wire x1="60.96" y1="55.88" x2="78.74" y2="55.88" width="0.1524" layer="91"/>
<wire x1="78.74" y1="55.88" x2="83.82" y2="55.88" width="0.1524" layer="91"/>
<wire x1="83.82" y1="55.88" x2="99.06" y2="55.88" width="0.1524" layer="91"/>
<wire x1="99.06" y1="55.88" x2="104.14" y2="55.88" width="0.1524" layer="91"/>
<wire x1="104.14" y1="55.88" x2="119.38" y2="55.88" width="0.1524" layer="91"/>
<wire x1="119.38" y1="55.88" x2="124.46" y2="55.88" width="0.1524" layer="91"/>
<wire x1="124.46" y1="55.88" x2="185.42" y2="55.88" width="0.1524" layer="91"/>
<wire x1="185.42" y1="55.88" x2="185.42" y2="78.74" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="12"/>
<pinref part="S303" gate="1" pin="C"/>
<wire x1="185.42" y1="78.74" x2="203.2" y2="78.74" width="0.1524" layer="91"/>
<wire x1="83.82" y1="60.96" x2="83.82" y2="55.88" width="0.1524" layer="91"/>
<pinref part="S304" gate="1" pin="C"/>
<wire x1="104.14" y1="60.96" x2="104.14" y2="55.88" width="0.1524" layer="91"/>
<pinref part="S305" gate="1" pin="C"/>
<wire x1="124.46" y1="60.96" x2="124.46" y2="55.88" width="0.1524" layer="91"/>
<junction x="83.82" y="55.88"/>
<junction x="104.14" y="55.88"/>
<junction x="124.46" y="55.88"/>
<pinref part="S302" gate="1" pin="P"/>
<wire x1="55.88" y1="60.96" x2="55.88" y2="55.88" width="0.1524" layer="91"/>
<wire x1="55.88" y1="55.88" x2="60.96" y2="55.88" width="0.1524" layer="91"/>
<pinref part="S303" gate="1" pin="P"/>
<wire x1="78.74" y1="60.96" x2="78.74" y2="55.88" width="0.1524" layer="91"/>
<pinref part="S304" gate="1" pin="P"/>
<wire x1="99.06" y1="60.96" x2="99.06" y2="55.88" width="0.1524" layer="91"/>
<pinref part="S305" gate="1" pin="P"/>
<wire x1="119.38" y1="60.96" x2="119.38" y2="55.88" width="0.1524" layer="91"/>
<junction x="60.96" y="55.88"/>
<junction x="78.74" y="55.88"/>
<junction x="99.06" y="55.88"/>
<junction x="119.38" y="55.88"/>
<junction x="185.42" y="78.74"/>
<pinref part="S301" gate="G$1" pin="A"/>
<wire x1="185.42" y1="137.16" x2="185.42" y2="78.74" width="0.1524" layer="91"/>
<wire x1="101.6" y1="129.54" x2="101.6" y2="137.16" width="0.1524" layer="91"/>
<wire x1="101.6" y1="137.16" x2="185.42" y2="137.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="JP7" gate="G$1" pin="11"/>
<wire x1="124.46" y1="81.28" x2="203.2" y2="81.28" width="0.1524" layer="91"/>
<pinref part="S305" gate="1" pin="A"/>
<wire x1="124.46" y1="81.28" x2="124.46" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<wire x1="104.14" y1="71.12" x2="104.14" y2="83.82" width="0.1524" layer="91"/>
<wire x1="104.14" y1="83.82" x2="203.2" y2="83.82" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="10"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<wire x1="83.82" y1="71.12" x2="83.82" y2="86.36" width="0.1524" layer="91"/>
<wire x1="83.82" y1="86.36" x2="203.2" y2="86.36" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="9"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<wire x1="60.96" y1="71.12" x2="60.96" y2="88.9" width="0.1524" layer="91"/>
<wire x1="60.96" y1="88.9" x2="203.2" y2="88.9" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="8"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="S305" gate="1" pin="S"/>
<wire x1="119.38" y1="71.12" x2="119.38" y2="91.44" width="0.1524" layer="91"/>
<wire x1="119.38" y1="91.44" x2="203.2" y2="91.44" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="7"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="S304" gate="1" pin="S"/>
<wire x1="99.06" y1="71.12" x2="99.06" y2="93.98" width="0.1524" layer="91"/>
<wire x1="99.06" y1="93.98" x2="203.2" y2="93.98" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="6"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="S303" gate="1" pin="S"/>
<wire x1="78.74" y1="71.12" x2="78.74" y2="96.52" width="0.1524" layer="91"/>
<wire x1="78.74" y1="96.52" x2="203.2" y2="96.52" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="5"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="S302" gate="1" pin="S"/>
<wire x1="55.88" y1="71.12" x2="55.88" y2="99.06" width="0.1524" layer="91"/>
<wire x1="55.88" y1="99.06" x2="203.2" y2="99.06" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="4"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="JP7" gate="G$1" pin="3"/>
<wire x1="203.2" y1="101.6" x2="124.46" y2="101.6" width="0.1524" layer="91"/>
<pinref part="S301" gate="G$1" pin="10"/>
<wire x1="124.46" y1="114.3" x2="124.46" y2="111.76" width="0.1524" layer="91"/>
<pinref part="S301" gate="G$1" pin="1"/>
<wire x1="124.46" y1="111.76" x2="124.46" y2="101.6" width="0.1524" layer="91"/>
<wire x1="101.6" y1="114.3" x2="101.6" y2="111.76" width="0.1524" layer="91"/>
<wire x1="101.6" y1="111.76" x2="109.22" y2="111.76" width="0.1524" layer="91"/>
<pinref part="S301" gate="G$1" pin="4"/>
<wire x1="124.46" y1="111.76" x2="116.84" y2="111.76" width="0.1524" layer="91"/>
<wire x1="109.22" y1="114.3" x2="109.22" y2="111.76" width="0.1524" layer="91"/>
<pinref part="S301" gate="G$1" pin="7"/>
<wire x1="109.22" y1="111.76" x2="116.84" y2="111.76" width="0.1524" layer="91"/>
<wire x1="116.84" y1="114.3" x2="116.84" y2="111.76" width="0.1524" layer="91"/>
<junction x="109.22" y="111.76"/>
<junction x="116.84" y="111.76"/>
<junction x="124.46" y="111.76"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="JP7" gate="G$1" pin="2"/>
<wire x1="203.2" y1="104.14" x2="127" y2="104.14" width="0.1524" layer="91"/>
<pinref part="S301" gate="G$1" pin="11"/>
<wire x1="127" y1="114.3" x2="127" y2="109.22" width="0.1524" layer="91"/>
<pinref part="S301" gate="G$1" pin="2"/>
<wire x1="127" y1="109.22" x2="127" y2="104.14" width="0.1524" layer="91"/>
<wire x1="104.14" y1="114.3" x2="104.14" y2="109.22" width="0.1524" layer="91"/>
<wire x1="104.14" y1="109.22" x2="111.76" y2="109.22" width="0.1524" layer="91"/>
<pinref part="S301" gate="G$1" pin="5"/>
<wire x1="111.76" y1="109.22" x2="119.38" y2="109.22" width="0.1524" layer="91"/>
<wire x1="119.38" y1="109.22" x2="127" y2="109.22" width="0.1524" layer="91"/>
<wire x1="111.76" y1="114.3" x2="111.76" y2="109.22" width="0.1524" layer="91"/>
<pinref part="S301" gate="G$1" pin="8"/>
<wire x1="119.38" y1="114.3" x2="119.38" y2="109.22" width="0.1524" layer="91"/>
<junction x="111.76" y="109.22"/>
<junction x="119.38" y="109.22"/>
<junction x="127" y="109.22"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="JP7" gate="G$1" pin="1"/>
<wire x1="203.2" y1="106.68" x2="129.54" y2="106.68" width="0.1524" layer="91"/>
<pinref part="S301" gate="G$1" pin="12"/>
<wire x1="129.54" y1="114.3" x2="129.54" y2="106.68" width="0.1524" layer="91"/>
<pinref part="S301" gate="G$1" pin="3"/>
<wire x1="106.68" y1="114.3" x2="106.68" y2="106.68" width="0.1524" layer="91"/>
<wire x1="106.68" y1="106.68" x2="114.3" y2="106.68" width="0.1524" layer="91"/>
<pinref part="S301" gate="G$1" pin="6"/>
<wire x1="114.3" y1="106.68" x2="121.92" y2="106.68" width="0.1524" layer="91"/>
<wire x1="121.92" y1="106.68" x2="129.54" y2="106.68" width="0.1524" layer="91"/>
<wire x1="114.3" y1="114.3" x2="114.3" y2="106.68" width="0.1524" layer="91"/>
<pinref part="S301" gate="G$1" pin="9"/>
<wire x1="121.92" y1="114.3" x2="121.92" y2="106.68" width="0.1524" layer="91"/>
<junction x="114.3" y="106.68"/>
<junction x="121.92" y="106.68"/>
<junction x="129.54" y="106.68"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, Eagle supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
</compatibility>
</eagle>

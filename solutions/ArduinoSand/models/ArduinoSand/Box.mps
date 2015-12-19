<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:70bbd736-b363-4b34-8dc4-f96be016bcee(ArduinoSand.Box)">
  <persistence version="9" />
  <languages>
    <use id="cd609ef6-a120-482e-bf80-d86e6435a6cc" name="ArduinoLol" version="0" />
  </languages>
  <imports>
    <import index="cj9j" ref="r:70bbd736-b363-4b34-8dc4-f96be016bcee(ArduinoSand.Box)" />
  </imports>
  <registry>
    <language id="cd609ef6-a120-482e-bf80-d86e6435a6cc" name="ArduinoLol">
      <concept id="5379103421904332589" name="ArduinoLol.structure.Actuator" flags="ng" index="1a54OX" />
      <concept id="5379103421904332638" name="ArduinoLol.structure.App" flags="ng" index="1a54Pe">
        <reference id="5379103421904959230" name="initState" index="1a7tNI" />
        <child id="5379103421904332657" name="bricks" index="1a54Px" />
        <child id="5379103421904959164" name="states" index="1a7tMG" />
      </concept>
      <concept id="5379103421904332620" name="ArduinoLol.structure.Sensor" flags="ng" index="1a54Ps" />
      <concept id="5379103421904284754" name="ArduinoLol.structure.Brick" flags="ng" index="1a5Kp2">
        <property id="5379103421904332534" name="pin" index="1a54NA" />
      </concept>
      <concept id="5379103421904959001" name="ArduinoLol.structure.Transition" flags="ng" index="1a7tK9">
        <property id="5379103421904959080" name="status" index="1a7tLS" />
        <reference id="5379103421904959100" name="sensor" index="1a7tLG" />
        <reference id="5379103421904959121" name="target" index="1a7tM1" />
      </concept>
      <concept id="5379103421904958703" name="ArduinoLol.structure.State" flags="ng" index="1a7tVZ">
        <child id="5379103421904986633" name="transitions" index="1a6$wp" />
        <child id="5379103421904986607" name="actions" index="1a6$JZ" />
      </concept>
      <concept id="5379103421904958779" name="ArduinoLol.structure.Action" flags="ng" index="1a7tWF">
        <property id="5379103421904958950" name="status" index="1a7tZQ" />
        <reference id="5379103421904958967" name="actuator" index="1a7tZB" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1a54Pe" id="4EAqx00J47E">
    <property role="TrG5h" value="Red_button" />
    <ref role="1a7tNI" node="4EAqx00Ja7V" resolve="off" />
    <node concept="1a7tVZ" id="4EAqx00Ja7j" role="1a7tMG">
      <property role="TrG5h" value="on" />
      <node concept="1a7tK9" id="4EAqx00Ja7k" role="1a6$wp">
        <ref role="1a7tLG" node="4EAqx00J48S" resolve="button" />
        <ref role="1a7tM1" node="4EAqx00Ja7V" resolve="off" />
      </node>
      <node concept="1a7tWF" id="4EAqx00Ja7N" role="1a6$JZ">
        <ref role="1a7tZB" node="4EAqx00J48y" resolve="red_led" />
      </node>
    </node>
    <node concept="1a7tVZ" id="4EAqx00Ja7V" role="1a7tMG">
      <property role="TrG5h" value="off" />
      <node concept="1a7tK9" id="4EAqx00Ja7W" role="1a6$wp">
        <property role="1a7tLS" value="false" />
        <ref role="1a7tLG" node="4EAqx00J48S" resolve="button" />
        <ref role="1a7tM1" node="4EAqx00Ja7j" resolve="on" />
      </node>
      <node concept="1a7tWF" id="4EAqx00Ja8a" role="1a6$JZ">
        <property role="1a7tZQ" value="false" />
        <ref role="1a7tZB" node="4EAqx00J48y" resolve="red_led" />
      </node>
    </node>
    <node concept="1a54OX" id="4EAqx00J48y" role="1a54Px">
      <property role="TrG5h" value="red_led" />
      <property role="1a54NA" value="12" />
    </node>
    <node concept="1a54Ps" id="4EAqx00J48S" role="1a54Px">
      <property role="TrG5h" value="button" />
      <property role="1a54NA" value="9" />
    </node>
  </node>
</model>


<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e6b44b62-21a3-4421-93a9-e6237292492e(ArduinoTestLanguage.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="o53g" ref="r:8692b7bc-0a62-4699-aa66-f98ee8d99667(ArduinoTestLanguage.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="4EAqx00HwoT">
    <ref role="1XX52x" to="o53g:4EAqx00GysH" resolve="Actuator" />
    <node concept="3EZMnI" id="4EAqx00IaFE" role="2wV5jI">
      <node concept="3F0ifn" id="4EAqx00Ihy6" role="3EZMnx">
        <property role="3F0ifm" value="actuator " />
      </node>
      <node concept="2iRfu4" id="4EAqx00IaFH" role="2iSdaV" />
      <node concept="3F0A7n" id="4EAqx00Ihyg" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="4EAqx00Ihyo" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="4EAqx00Ihyy" role="3EZMnx">
        <ref role="1NtTu8" to="o53g:4EAqx00GyrQ" resolve="pin" />
      </node>
    </node>
    <node concept="3F0ifn" id="4EAqx00HyHN" role="6VMZX" />
  </node>
  <node concept="24kQdi" id="4EAqx00HyIE">
    <ref role="1XX52x" to="o53g:4EAqx00Gytc" resolve="Sensor" />
    <node concept="3EZMnI" id="4EAqx00HyIG" role="2wV5jI">
      <node concept="3F0ifn" id="4EAqx00IhyT" role="3EZMnx">
        <property role="3F0ifm" value="sensor" />
      </node>
      <node concept="3F0A7n" id="4EAqx00IhyZ" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="4EAqx00Ihz7" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="4EAqx00Ihzh" role="3EZMnx">
        <ref role="1NtTu8" to="o53g:4EAqx00GyrQ" resolve="pin" />
      </node>
      <node concept="2iRfu4" id="4EAqx00HyIJ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4EAqx00Ja$j">
    <ref role="1XX52x" to="o53g:4EAqx00IVop" resolve="Transition" />
    <node concept="3EZMnI" id="4EAqx00Ja_1" role="2wV5jI">
      <node concept="1iCGBv" id="4EAqx00JaBc" role="3EZMnx">
        <ref role="1NtTu8" to="o53g:4EAqx00IVpW" />
        <node concept="1sVBvm" id="4EAqx00JaBe" role="1sWHZn">
          <node concept="3F0A7n" id="4EAqx00JaBE" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4EAqx00JaC$" role="3EZMnx">
        <property role="3F0ifm" value="is" />
      </node>
      <node concept="3F0A7n" id="4EAqx00JaD7" role="3EZMnx">
        <ref role="1NtTu8" to="o53g:4EAqx00IVpC" resolve="status" />
      </node>
      <node concept="3F0ifn" id="4EAqx00JaDG" role="3EZMnx">
        <property role="3F0ifm" value="=&gt;" />
      </node>
      <node concept="1iCGBv" id="4EAqx00JaEl" role="3EZMnx">
        <ref role="1NtTu8" to="o53g:4EAqx00IVqh" />
        <node concept="1sVBvm" id="4EAqx00JaEn" role="1sWHZn">
          <node concept="3F0A7n" id="4EAqx00JaEZ" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="4EAqx00Ja_4" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4EAqx00JaIF">
    <ref role="1XX52x" to="o53g:4EAqx00IVkV" resolve="Action" />
    <node concept="3EZMnI" id="4EAqx00JaJ_" role="2wV5jI">
      <node concept="1iCGBv" id="4EAqx00JaKe" role="3EZMnx">
        <ref role="1NtTu8" to="o53g:4EAqx00IVnR" />
        <node concept="1sVBvm" id="4EAqx00JaKg" role="1sWHZn">
          <node concept="3F0A7n" id="4EAqx00JaKS" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4EAqx00JaM3" role="3EZMnx">
        <property role="3F0ifm" value="&lt;=" />
      </node>
      <node concept="3F0A7n" id="4EAqx00JaMT" role="3EZMnx">
        <ref role="1NtTu8" to="o53g:4EAqx00IVnA" resolve="status" />
      </node>
      <node concept="l2Vlx" id="4EAqx00JaJC" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4EAqx00JaNU">
    <ref role="1XX52x" to="o53g:4EAqx00IVjJ" resolve="State" />
    <node concept="3EZMnI" id="4EAqx00JaRG" role="2wV5jI">
      <node concept="3EZMnI" id="4EAqx00JaRN" role="3EZMnx">
        <node concept="VPM3Z" id="4EAqx00JaRP" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0A7n" id="4EAqx00JaS3" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="l2Vlx" id="4EAqx00JaRS" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4EAqx00JaSS" role="3EZMnx">
        <node concept="VPM3Z" id="4EAqx00JaSU" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="4EAqx00Jg1C" role="3EZMnx" />
        <node concept="3F2HdR" id="4EAqx00JaTU" role="3EZMnx">
          <ref role="1NtTu8" to="o53g:4EAqx00J27J" />
          <node concept="2iRkQZ" id="4EAqx00JaTX" role="2czzBx" />
          <node concept="VPM3Z" id="4EAqx00JaTY" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="l2Vlx" id="4EAqx00JaSX" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4EAqx00JaWy" role="3EZMnx">
        <node concept="VPM3Z" id="4EAqx00JaW$" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="4EAqx00Jg2_" role="3EZMnx" />
        <node concept="3F1sOY" id="4EAqx00JaXG" role="3EZMnx">
          <ref role="1NtTu8" to="o53g:4EAqx00J289" />
        </node>
        <node concept="l2Vlx" id="4EAqx00JaWB" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="4EAqx00JaRJ" role="2iSdaV" />
    </node>
  </node>
</model>


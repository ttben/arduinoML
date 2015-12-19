<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:204aa912-6562-4265-9126-40f163c98dcf(ArduinoTestLanguage.generator.template.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="cd609ef6-a120-482e-bf80-d86e6435a6cc" name="ArduinoLol" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="-1" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="-1" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="o53g" ref="r:8692b7bc-0a62-4699-aa66-f98ee8d99667(ArduinoTestLanguage.structure)" />
    <import index="fxg7" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="e2lb" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1217889725928" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_SessionObjectAccess" flags="nn" index="2fSANN" />
      <concept id="1217889960776" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_UserObjectAccessBase" flags="nn" index="2fTw9j">
        <child id="1217890689512" name="userKey" index="2fWi3N" />
      </concept>
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="4EAqx00GdDB">
    <property role="TrG5h" value="main" />
    <node concept="3lhOvk" id="4EAqx00HBLe" role="3lj3bC">
      <ref role="30HIoZ" to="o53g:4EAqx00Gytu" resolve="App" />
      <ref role="3lhOvi" node="4EAqx00HCzQ" resolve="map_App" />
    </node>
    <node concept="3aamgX" id="4EAqx00IiON" role="3acgRq">
      <ref role="30HIoZ" to="o53g:4EAqx00Gytc" resolve="Sensor" />
      <node concept="j$656" id="4EAqx00Ipz9" role="1lVwrX">
        <ref role="v9R2y" node="4EAqx00Ipz7" resolve="reduce_Sensor" />
      </node>
    </node>
    <node concept="3aamgX" id="4EAqx00IOEx" role="3acgRq">
      <ref role="30HIoZ" to="o53g:4EAqx00GysH" resolve="Actuator" />
      <node concept="j$656" id="4EAqx00IOED" role="1lVwrX">
        <ref role="v9R2y" node="4EAqx00IOEB" resolve="reduce_Actuator" />
      </node>
    </node>
    <node concept="3aamgX" id="4EAqx00Jrx3" role="3acgRq">
      <ref role="30HIoZ" to="o53g:4EAqx00IVkV" resolve="Action" />
      <node concept="j$656" id="4EAqx00Jrz0" role="1lVwrX">
        <ref role="v9R2y" node="4EAqx00JryY" resolve="reduce_Action" />
      </node>
    </node>
    <node concept="3aamgX" id="4EAqx00JzAD" role="3acgRq">
      <ref role="30HIoZ" to="o53g:4EAqx00IVop" resolve="Transition" />
      <node concept="j$656" id="4EAqx00JzDi" role="1lVwrX">
        <ref role="v9R2y" node="4EAqx00JzDg" resolve="reduce_Transition" />
      </node>
    </node>
    <node concept="3aamgX" id="4EAqx00JV_t" role="3acgRq">
      <ref role="30HIoZ" to="o53g:4EAqx00IVjJ" resolve="State" />
      <node concept="j$656" id="4EAqx00JVDg" role="1lVwrX">
        <ref role="v9R2y" node="4EAqx00JVDe" resolve="reduce_State" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4EAqx00HCzQ">
    <property role="TrG5h" value="map_App" />
    <node concept="2tJIrI" id="4EAqx00HGBp" role="jymVt" />
    <node concept="2YIFZL" id="4EAqx00HHZw" role="jymVt">
      <property role="TrG5h" value="main" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4EAqx00HHZz" role="3clF47">
        <node concept="3clFbF" id="4EAqx00HIEk" role="3cqZAp">
          <node concept="2OqwBi" id="4EAqx00I8nB" role="3clFbG">
            <node concept="10M0yZ" id="4EAqx00HIEj" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4EAqx00I8H$" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="4EAqx00I8Ij" role="37wK5m">
                <property role="Xl_RC" value="// Code generated by ArduinoLOL" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4EAqx00I8RY" role="3cqZAp">
          <node concept="2OqwBi" id="4EAqx00I8WJ" role="3clFbG">
            <node concept="10M0yZ" id="4EAqx00I8RX" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4EAqx00I9fZ" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="4EAqx00I9ij" role="37wK5m">
                <property role="Xl_RC" value="void setup(){" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4EAqx00I9r5" role="3cqZAp">
          <node concept="2OqwBi" id="4EAqx00I9wD" role="3clFbG">
            <node concept="10M0yZ" id="4EAqx00I9r4" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4EAqx00I9Oc" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="4EAqx00I9V0" role="37wK5m">
                <property role="Xl_RC" value="    // Here comes inputs declaration" />
              </node>
            </node>
          </node>
          <node concept="2b32R4" id="4EAqx00IH1f" role="lGtFl">
            <node concept="3JmXsc" id="4EAqx00IH1i" role="2P8S$">
              <node concept="3clFbS" id="4EAqx00IH1j" role="2VODD2">
                <node concept="3clFbF" id="4EAqx00IH1p" role="3cqZAp">
                  <node concept="2OqwBi" id="4EAqx00IH1k" role="3clFbG">
                    <node concept="3Tsc0h" id="4EAqx00IH1n" role="2OqNvi">
                      <ref role="3TtcxE" to="o53g:4EAqx00GytL" />
                    </node>
                    <node concept="30H73N" id="4EAqx00IH1o" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4EAqx00Ia9u" role="3cqZAp">
          <node concept="2OqwBi" id="4EAqx00IafP" role="3clFbG">
            <node concept="10M0yZ" id="4EAqx00Ia9t" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4EAqx00IazF" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="4EAqx00Ia$U" role="37wK5m">
                <property role="Xl_RC" value="}" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4EAqx00JfK2" role="3cqZAp" />
        <node concept="3clFbF" id="4EAqx00JjqT" role="3cqZAp">
          <node concept="2OqwBi" id="4EAqx00JjE_" role="3clFbG">
            <node concept="10M0yZ" id="4EAqx00JjwE" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4EAqx00Jkhw" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="4EAqx00Jkia" role="37wK5m">
                <property role="Xl_RC" value="\n// Behavioral concepts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4EAqx00JkDP" role="3cqZAp">
          <node concept="2OqwBi" id="4EAqx00JkPq" role="3clFbG">
            <node concept="10M0yZ" id="4EAqx00JkDO" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4EAqx00JlvV" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="4EAqx00Jlxi" role="37wK5m">
                <property role="Xl_RC" value="long time = 0; long debounce = 200;\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4EAqx00JlPz" role="3cqZAp" />
        <node concept="3clFbF" id="4EAqx00Jm6t" role="3cqZAp">
          <node concept="2OqwBi" id="4EAqx00Jmor" role="3clFbG">
            <node concept="10M0yZ" id="4EAqx00Jmdj" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4EAqx00Jn00" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="4EAqx00Jn0E" role="37wK5m">
                <property role="Xl_RC" value="    // Here comes states declaration" />
              </node>
            </node>
          </node>
          <node concept="2b32R4" id="4EAqx00KpJE" role="lGtFl">
            <node concept="3JmXsc" id="4EAqx00KpJH" role="2P8S$">
              <node concept="3clFbS" id="4EAqx00KpJI" role="2VODD2">
                <node concept="3clFbF" id="4EAqx00KpJO" role="3cqZAp">
                  <node concept="2OqwBi" id="4EAqx00KpJJ" role="3clFbG">
                    <node concept="3Tsc0h" id="4EAqx00KpJM" role="2OqNvi">
                      <ref role="3TtcxE" to="o53g:4EAqx00IVqW" />
                    </node>
                    <node concept="30H73N" id="4EAqx00KpJN" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4EAqx00JndZ" role="3cqZAp" />
        <node concept="3clFbF" id="4EAqx00JnqQ" role="3cqZAp">
          <node concept="2OqwBi" id="4EAqx00JnCb" role="3clFbG">
            <node concept="10M0yZ" id="4EAqx00JnqP" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4EAqx00JnXt" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="4EAqx00JoUd" role="37wK5m">
                <node concept="Xl_RD" id="4EAqx00Jp7G" role="3uHU7w">
                  <property role="Xl_RC" value="();} // Entering init state\n" />
                </node>
                <node concept="3cpWs3" id="4EAqx00Jouk" role="3uHU7B">
                  <node concept="Xl_RD" id="4EAqx00Jo1w" role="3uHU7B">
                    <property role="Xl_RC" value="\nvoid loop() { state_" />
                  </node>
                  <node concept="Xl_RD" id="4EAqx00Joye" role="3uHU7w">
                    <property role="Xl_RC" value="init_state" />
                    <node concept="17Uvod" id="4EAqx00JpOb" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="4EAqx00JpOc" role="3zH0cK">
                        <node concept="3clFbS" id="4EAqx00JpOd" role="2VODD2">
                          <node concept="3clFbF" id="4EAqx00JqbG" role="3cqZAp">
                            <node concept="2OqwBi" id="4EAqx00Jr11" role="3clFbG">
                              <node concept="2OqwBi" id="4EAqx00JqgD" role="2Oq$k0">
                                <node concept="30H73N" id="4EAqx00JqbF" role="2Oq$k0" />
                                <node concept="3TrEf2" id="4EAqx00JqGM" role="2OqNvi">
                                  <ref role="3Tt5mk" to="o53g:4EAqx00IVrY" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="4EAqx00JroC" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4EAqx00HGlX" role="1B3o_S" />
      <node concept="3cqZAl" id="4EAqx00HGm8" role="3clF45" />
      <node concept="37vLTG" id="4EAqx00IbGa" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="4EAqx00IbIC" role="1tU5fm">
          <node concept="17QB3L" id="4EAqx00IczH" role="10Q1$1" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4EAqx00HCzR" role="1B3o_S" />
    <node concept="n94m4" id="4EAqx00HCzS" role="lGtFl">
      <ref role="n9lRv" to="o53g:4EAqx00Gytu" resolve="App" />
    </node>
  </node>
  <node concept="13MO4I" id="4EAqx00Ipz7">
    <property role="TrG5h" value="reduce_Sensor" />
    <ref role="3gUMe" to="o53g:4EAqx00Gytc" resolve="Sensor" />
    <node concept="9aQIb" id="4EAqx00Ip$c" role="13RCb5">
      <node concept="3clFbS" id="4EAqx00Ip$e" role="9aQI4">
        <node concept="raruj" id="4EAqx00IpBU" role="lGtFl" />
        <node concept="3clFbF" id="4EAqx00IrTs" role="3cqZAp">
          <node concept="2OqwBi" id="4EAqx00IrXa" role="3clFbG">
            <node concept="10M0yZ" id="4EAqx00IrTr" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4EAqx00IsfQ" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="4EAqx00Itjl" role="37wK5m">
                <node concept="Xl_RD" id="4EAqx00ItvI" role="3uHU7w">
                  <property role="Xl_RC" value=", INPUT);" />
                </node>
                <node concept="3cpWs3" id="4EAqx00IsKm" role="3uHU7B">
                  <node concept="Xl_RD" id="4EAqx00Isig" role="3uHU7B">
                    <property role="Xl_RC" value="\t pinMode(" />
                  </node>
                  <node concept="3cmrfG" id="4EAqx00IsMl" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                    <node concept="17Uvod" id="4EAqx00ItZG" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="4EAqx00ItZH" role="3zH0cK">
                        <node concept="3clFbS" id="4EAqx00ItZI" role="2VODD2">
                          <node concept="3clFbF" id="4EAqx00Ix4v" role="3cqZAp">
                            <node concept="2OqwBi" id="4EAqx00Ixh1" role="3clFbG">
                              <node concept="30H73N" id="4EAqx00Ix4u" role="2Oq$k0" />
                              <node concept="3TrcHB" id="4EAqx00IFyV" role="2OqNvi">
                                <ref role="3TsBF5" to="o53g:4EAqx00GyrQ" resolve="pin" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="4EAqx00IOEB">
    <property role="TrG5h" value="reduce_Actuator" />
    <ref role="3gUMe" to="o53g:4EAqx00GysH" resolve="Actuator" />
    <node concept="9aQIb" id="4EAqx00IOGg" role="13RCb5">
      <node concept="3clFbS" id="4EAqx00IOGi" role="9aQI4">
        <node concept="raruj" id="4EAqx00IOGQ" role="lGtFl" />
        <node concept="3clFbF" id="4EAqx00IOHX" role="3cqZAp">
          <node concept="2OqwBi" id="4EAqx00IOLH" role="3clFbG">
            <node concept="10M0yZ" id="4EAqx00IOHW" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4EAqx00IP4p" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="4EAqx00IQ_4" role="37wK5m">
                <node concept="Xl_RD" id="4EAqx00IQU8" role="3uHU7w">
                  <property role="Xl_RC" value=", OUTPUT);" />
                </node>
                <node concept="3cpWs3" id="4EAqx00IPX4" role="3uHU7B">
                  <node concept="Xl_RD" id="4EAqx00IP4X" role="3uHU7B">
                    <property role="Xl_RC" value="\t pintMode(" />
                  </node>
                  <node concept="3cmrfG" id="4EAqx00IQ44" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                    <node concept="17Uvod" id="4EAqx00Kwcy" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="4EAqx00Kwc_" role="3zH0cK">
                        <node concept="3clFbS" id="4EAqx00KwcA" role="2VODD2">
                          <node concept="3clFbF" id="4EAqx00KwcG" role="3cqZAp">
                            <node concept="2OqwBi" id="4EAqx00KwcB" role="3clFbG">
                              <node concept="3TrcHB" id="4EAqx00KwcE" role="2OqNvi">
                                <ref role="3TsBF5" to="o53g:4EAqx00GyrQ" resolve="pin" />
                              </node>
                              <node concept="30H73N" id="4EAqx00KwcF" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="4EAqx00JryY">
    <property role="TrG5h" value="reduce_Action" />
    <ref role="3gUMe" to="o53g:4EAqx00IVkV" resolve="Action" />
    <node concept="9aQIb" id="4EAqx00Jsrg" role="13RCb5">
      <node concept="3clFbS" id="4EAqx00Jsri" role="9aQI4">
        <node concept="raruj" id="4EAqx00JsrQ" role="lGtFl" />
        <node concept="3clFbF" id="4EAqx00JstK" role="3cqZAp">
          <node concept="2OqwBi" id="4EAqx00Jsxw" role="3clFbG">
            <node concept="10M0yZ" id="4EAqx00JstJ" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4EAqx00Jt6_" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="4EAqx00JvuO" role="37wK5m">
                <node concept="Xl_RD" id="4EAqx00JvHH" role="3uHU7w">
                  <property role="Xl_RC" value=");" />
                </node>
                <node concept="3cpWs3" id="4EAqx00JuJv" role="3uHU7B">
                  <node concept="3cpWs3" id="4EAqx00Ju5n" role="3uHU7B">
                    <node concept="3cpWs3" id="4EAqx00JtK6" role="3uHU7B">
                      <node concept="Xl_RD" id="4EAqx00Jt9g" role="3uHU7B">
                        <property role="Xl_RC" value="    digitalWrite(" />
                      </node>
                      <node concept="3cmrfG" id="4EAqx00JtNl" role="3uHU7w">
                        <property role="3cmrfH" value="0" />
                        <node concept="17Uvod" id="4EAqx00JvU2" role="lGtFl">
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                          <property role="2qtEX9" value="value" />
                          <node concept="3zFVjK" id="4EAqx00JvU3" role="3zH0cK">
                            <node concept="3clFbS" id="4EAqx00JvU4" role="2VODD2">
                              <node concept="3clFbF" id="4EAqx00Jwic" role="3cqZAp">
                                <node concept="2OqwBi" id="4EAqx00Jx0h" role="3clFbG">
                                  <node concept="2OqwBi" id="4EAqx00JwoM" role="2Oq$k0">
                                    <node concept="30H73N" id="4EAqx00Jwib" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="4EAqx00JwLw" role="2OqNvi">
                                      <ref role="3Tt5mk" to="o53g:4EAqx00IVnR" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="4EAqx00Jxwi" role="2OqNvi">
                                    <ref role="3TsBF5" to="o53g:4EAqx00GyrQ" resolve="pin" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="4EAqx00Juj0" role="3uHU7w">
                      <property role="Xl_RC" value=", " />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="4EAqx00JuXK" role="3uHU7w">
                    <property role="Xl_RC" value="SIGNAL" />
                    <node concept="17Uvod" id="4EAqx00JxI5" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="4EAqx00JxI6" role="3zH0cK">
                        <node concept="3clFbS" id="4EAqx00JxI7" role="2VODD2">
                          <node concept="3clFbF" id="4EAqx00Jynu" role="3cqZAp">
                            <node concept="3K4zz7" id="4EAqx00Jz7x" role="3clFbG">
                              <node concept="Xl_RD" id="4EAqx00Jzdt" role="3K4E3e">
                                <property role="Xl_RC" value="HIGH" />
                              </node>
                              <node concept="Xl_RD" id="4EAqx00Jzoe" role="3K4GZi">
                                <property role="Xl_RC" value="LOW" />
                              </node>
                              <node concept="2OqwBi" id="4EAqx00Jyrw" role="3K4Cdx">
                                <node concept="30H73N" id="4EAqx00Jynt" role="2Oq$k0" />
                                <node concept="3TrcHB" id="4EAqx00JyIY" role="2OqNvi">
                                  <ref role="3TsBF5" to="o53g:4EAqx00IVnA" resolve="status" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="4EAqx00JzDg">
    <property role="TrG5h" value="reduce_Transition" />
    <ref role="3gUMe" to="o53g:4EAqx00IVop" resolve="Transition" />
    <node concept="9aQIb" id="4EAqx00JCok" role="13RCb5">
      <node concept="3clFbS" id="4EAqx00JCom" role="9aQI4">
        <node concept="raruj" id="4EAqx00JCoq" role="lGtFl" />
        <node concept="3clFbF" id="4EAqx00JE7p" role="3cqZAp">
          <node concept="2OqwBi" id="4EAqx00JEbc" role="3clFbG">
            <node concept="10M0yZ" id="4EAqx00JE7t" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4EAqx00JEKh" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="4EAqx00JHeu" role="37wK5m">
                <node concept="Xl_RD" id="4EAqx00JHtX" role="3uHU7w">
                  <property role="Xl_RC" value=");" />
                </node>
                <node concept="3cpWs3" id="4EAqx00JGmD" role="3uHU7B">
                  <node concept="3cpWs3" id="4EAqx00JFOo" role="3uHU7B">
                    <node concept="3cpWs3" id="4EAqx00JFfz" role="3uHU7B">
                      <node concept="Xl_RD" id="4EAqx00JENI" role="3uHU7B">
                        <property role="Xl_RC" value="    if(digitalRead(" />
                      </node>
                      <node concept="3cmrfG" id="4EAqx00JFjo" role="3uHU7w">
                        <property role="3cmrfH" value="0" />
                        <node concept="17Uvod" id="4EAqx00JMR7" role="lGtFl">
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                          <property role="2qtEX9" value="value" />
                          <node concept="3zFVjK" id="4EAqx00JMR8" role="3zH0cK">
                            <node concept="3clFbS" id="4EAqx00JMR9" role="2VODD2">
                              <node concept="3clFbF" id="4EAqx00JNjN" role="3cqZAp">
                                <node concept="2OqwBi" id="4EAqx00JNUJ" role="3clFbG">
                                  <node concept="2OqwBi" id="4EAqx00JNqr" role="2Oq$k0">
                                    <node concept="30H73N" id="4EAqx00JNjM" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="4EAqx00JNFY" role="2OqNvi">
                                      <ref role="3Tt5mk" to="o53g:4EAqx00IVpW" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="4EAqx00JOqK" role="2OqNvi">
                                    <ref role="3TsBF5" to="o53g:4EAqx00GyrQ" resolve="pin" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="4EAqx00JG2B" role="3uHU7w">
                      <property role="Xl_RC" value=", " />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="4EAqx00JG_w" role="3uHU7w">
                    <property role="Xl_RC" value="SIGNAL" />
                    <node concept="17Uvod" id="4EAqx00JODr" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="4EAqx00JODs" role="3zH0cK">
                        <node concept="3clFbS" id="4EAqx00JODt" role="2VODD2">
                          <node concept="3clFbF" id="4EAqx00JPhL" role="3cqZAp">
                            <node concept="3K4zz7" id="4EAqx00JR68" role="3clFbG">
                              <node concept="Xl_RD" id="4EAqx00JRc4" role="3K4E3e">
                                <property role="Xl_RC" value="HIGH" />
                              </node>
                              <node concept="Xl_RD" id="4EAqx00JRnd" role="3K4GZi">
                                <property role="Xl_RC" value="LOW" />
                              </node>
                              <node concept="2OqwBi" id="4EAqx00JPlN" role="3K4Cdx">
                                <node concept="30H73N" id="4EAqx00JPhK" role="2Oq$k0" />
                                <node concept="3TrcHB" id="4EAqx00JQJT" role="2OqNvi">
                                  <ref role="3TsBF5" to="o53g:4EAqx00IVpC" resolve="status" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4EAqx00JHNS" role="3cqZAp">
          <node concept="2OqwBi" id="4EAqx00JIkH" role="3clFbG">
            <node concept="10M0yZ" id="4EAqx00JHRC" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4EAqx00JITM" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="4EAqx00JK38" role="37wK5m">
                <node concept="Xl_RD" id="4EAqx00JKh$" role="3uHU7w">
                  <property role="Xl_RC" value="();" />
                </node>
                <node concept="3cpWs3" id="4EAqx00JJ_S" role="3uHU7B">
                  <node concept="Xl_RD" id="4EAqx00JIUe" role="3uHU7B">
                    <property role="Xl_RC" value="        time = millis(); state_" />
                  </node>
                  <node concept="Xl_RD" id="4EAqx00KGSf" role="3uHU7w">
                    <property role="Xl_RC" value="STATE" />
                    <node concept="17Uvod" id="4EAqx00LdWD" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="4EAqx00LdWE" role="3zH0cK">
                        <node concept="3clFbS" id="4EAqx00LdWF" role="2VODD2">
                          <node concept="3clFbF" id="4EAqx00Leyc" role="3cqZAp">
                            <node concept="2OqwBi" id="4EAqx00Lf7U" role="3clFbG">
                              <node concept="2OqwBi" id="4EAqx00LeCG" role="2Oq$k0">
                                <node concept="30H73N" id="4EAqx00Leyb" role="2Oq$k0" />
                                <node concept="3TrEf2" id="4EAqx00LeWa" role="2OqNvi">
                                  <ref role="3Tt5mk" to="o53g:4EAqx00IVqh" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="4EAqx00Lfvf" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4EAqx00JKEJ" role="3cqZAp">
          <node concept="2OqwBi" id="4EAqx00JKN1" role="3clFbG">
            <node concept="10M0yZ" id="4EAqx00JKEI" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4EAqx00JLo6" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="4EAqx00JMgt" role="37wK5m">
                <node concept="Xl_RD" id="4EAqx00JMv2" role="3uHU7w">
                  <property role="Xl_RC" value="(); }" />
                </node>
                <node concept="3cpWs3" id="4EAqx00JLYo" role="3uHU7B">
                  <node concept="Xl_RD" id="4EAqx00JLpe" role="3uHU7B">
                    <property role="Xl_RC" value="    } else { state_" />
                  </node>
                  <node concept="Xl_RD" id="4EAqx00JM2z" role="3uHU7w">
                    <property role="Xl_RC" value="STATE_NAME" />
                    <node concept="17Uvod" id="4EAqx00JTw0" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="4EAqx00JTw1" role="3zH0cK">
                        <node concept="3clFbS" id="4EAqx00JTw2" role="2VODD2">
                          <node concept="3clFbF" id="4EAqx00JU2a" role="3cqZAp">
                            <node concept="3cpWs3" id="4EAqx00JUif" role="3clFbG">
                              <node concept="2OqwBi" id="4EAqx00JUwp" role="3uHU7w">
                                <node concept="1iwH7S" id="4EAqx00JUqV" role="2Oq$k0" />
                                <node concept="2fSANN" id="4EAqx00JUQT" role="2OqNvi">
                                  <node concept="Xl_RD" id="4EAqx00JV2b" role="2fWi3N">
                                    <property role="Xl_RC" value="current_state_name" />
                                  </node>
                                </node>
                              </node>
                              <node concept="Xl_RD" id="4EAqx00JU29" role="3uHU7B">
                                <property role="Xl_RC" value="" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="4EAqx00JVDe">
    <property role="TrG5h" value="reduce_State" />
    <ref role="3gUMe" to="o53g:4EAqx00IVjJ" resolve="State" />
    <node concept="9aQIb" id="4EAqx00JVKZ" role="13RCb5">
      <node concept="3clFbS" id="4EAqx00JVL1" role="9aQI4">
        <node concept="raruj" id="4EAqx00JVL5" role="lGtFl" />
        <node concept="3clFbF" id="4EAqx00JVPc" role="3cqZAp">
          <node concept="2OqwBi" id="4EAqx00JVT1" role="3clFbG">
            <node concept="10M0yZ" id="4EAqx00JVPg" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4EAqx00JWu6" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="4EAqx00JY2V" role="37wK5m">
                <node concept="Xl_RD" id="4EAqx00JYim" role="3uHU7w">
                  <property role="Xl_RC" value="(){" />
                </node>
                <node concept="3cpWs3" id="4EAqx00JXni" role="3uHU7B">
                  <node concept="Xl_RD" id="4EAqx00JWuy" role="3uHU7B">
                    <property role="Xl_RC" value="void state_" />
                  </node>
                  <node concept="Xl_RD" id="4EAqx00JXoz" role="3uHU7w">
                    <property role="Xl_RC" value="SATE_NAME" />
                    <node concept="17Uvod" id="4EAqx00K3Cj" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="4EAqx00K3Cm" role="3zH0cK">
                        <node concept="3clFbS" id="4EAqx00K3Cn" role="2VODD2">
                          <node concept="3clFbF" id="4EAqx00K3Ct" role="3cqZAp">
                            <node concept="2OqwBi" id="4EAqx00K3Co" role="3clFbG">
                              <node concept="3TrcHB" id="4EAqx00K3Cr" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                              <node concept="30H73N" id="4EAqx00K3Cs" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4EAqx00JYBQ" role="3cqZAp">
          <node concept="2OqwBi" id="4EAqx00JYIU" role="3clFbG">
            <node concept="10M0yZ" id="4EAqx00JYFe" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4EAqx00JZjZ" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="4EAqx00JZkr" role="37wK5m">
                <property role="Xl_RC" value="  // Here comes the action" />
              </node>
            </node>
          </node>
          <node concept="2b32R4" id="4EAqx00KqDN" role="lGtFl">
            <node concept="3JmXsc" id="4EAqx00KqDQ" role="2P8S$">
              <node concept="3clFbS" id="4EAqx00KqDR" role="2VODD2">
                <node concept="3clFbF" id="4EAqx00KqDX" role="3cqZAp">
                  <node concept="2OqwBi" id="4EAqx00KqDS" role="3clFbG">
                    <node concept="3Tsc0h" id="4EAqx00KqDV" role="2OqNvi">
                      <ref role="3TtcxE" to="o53g:4EAqx00J27J" />
                    </node>
                    <node concept="30H73N" id="4EAqx00KqDW" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4EAqx00JZBe" role="3cqZAp">
          <node concept="2OqwBi" id="4EAqx00JZIK" role="3clFbG">
            <node concept="10M0yZ" id="4EAqx00JZBd" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4EAqx00K01s" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="4EAqx00K034" role="37wK5m">
                <property role="Xl_RC" value="    boolean guard = millis() - time &gt; debounce;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4EAqx00K0LI" role="3cqZAp">
          <node concept="2OqwBi" id="4EAqx00K0TK" role="3clFbG">
            <node concept="10M0yZ" id="4EAqx00K0LH" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4EAqx00K1cs" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="4EAqx00K1$U" role="37wK5m">
                <property role="Xl_RC" value="  // Here comes the transition" />
              </node>
            </node>
          </node>
          <node concept="29HgVG" id="4EAqx00Kr5$" role="lGtFl">
            <node concept="3NFfHV" id="4EAqx00Kr5_" role="3NFExx">
              <node concept="3clFbS" id="4EAqx00Kr5A" role="2VODD2">
                <node concept="3clFbF" id="4EAqx00KVtK" role="3cqZAp">
                  <node concept="37vLTI" id="4EAqx00KVN_" role="3clFbG">
                    <node concept="2OqwBi" id="4EAqx00KVT5" role="37vLTx">
                      <node concept="30H73N" id="4EAqx00KVPA" role="2Oq$k0" />
                      <node concept="3TrcHB" id="4EAqx00KWcG" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4EAqx00KVuU" role="37vLTJ">
                      <node concept="1iwH7S" id="4EAqx00KVtI" role="2Oq$k0" />
                      <node concept="2fSANN" id="4EAqx00KVBw" role="2OqNvi">
                        <node concept="Xl_RD" id="4EAqx00KVDa" role="2fWi3N">
                          <property role="Xl_RC" value="current_state_name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4EAqx00Kr5G" role="3cqZAp">
                  <node concept="2OqwBi" id="4EAqx00Kr5B" role="3clFbG">
                    <node concept="3TrEf2" id="4EAqx00Kr5E" role="2OqNvi">
                      <ref role="3Tt5mk" to="o53g:4EAqx00J289" />
                    </node>
                    <node concept="30H73N" id="4EAqx00Kr5F" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4EAqx00K20y" role="3cqZAp">
          <node concept="2OqwBi" id="4EAqx00K294" role="3clFbG">
            <node concept="10M0yZ" id="4EAqx00K20x" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4EAqx00K2I9" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="4EAqx00K2I_" role="37wK5m">
                <property role="Xl_RC" value="}\n" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


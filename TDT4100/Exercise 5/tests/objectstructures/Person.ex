<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Person">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Person class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="objectstructures.Person"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Person class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="objectstructures.Person"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the PersonTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="objectstructures.PersonTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="objectstructures.Person" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Over"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Into"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the Variables view"/>
        <a xsi:type="workbench:PartTaskAnswer" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </tasks>
    </parts>
  </exercise:Exercise>
  <exercise:ExerciseProposals exercise="/0">
    <proposals exercisePart="/0/@parts.0">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.0/@q" answer="/0/@parts.0/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550489729417" resourcePath="/ovinger/src/objectstructures/Person.java" className="objectstructures.Person">
          <edit xsi:type="exercise:StringEdit" storedString=""/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550489745626" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="6" className="objectstructures.Person">
          <edit xsi:type="exercise:StringEdit" storedString="package objectstructures;&#xA;&#xA;public class Person&#xA;{&#xA;&#x9;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550489953949" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="50" errorCount="4" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private final String name;&#xA;&#x9;private final char gender;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public Person(String name, char gender)&#xA;&#x9;{&#xA;&#x9;&#x9;if (gender != 'F' &amp;&amp; gender != 'M')&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Gender must be either uppercase 'F' or 'M'&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;&#x9;this.gender = gender;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public String getName()&#xA;&#x9;{&#xA;&#x9;&#x9;return name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public char getGender()&#xA;&#x9;{&#xA;&#x9;&#x9;return gender;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Person getMother()&#xA;&#x9;{&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Person getFather()&#xA;&#x9;{&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getChildCount()&#xA;&#x9;{&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Person getChild(int i)&#xA;&#x9;{&#xA;&#x9;&#x9;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="50" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="46" charStart="566" charEnd="581" severity="2" problemCategory="50" problemType="603979884"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550490019229" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="55" errorCount="5" warningCount="3" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.List;&#xA;&#xA;public class Person&#xA;{&#xA;&#x9;private final String name;&#xA;&#x9;private final char gender;&#xA;&#x9;private Person mother, father;&#xA;&#x9;private List&lt;Person> children;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public Person(String name, char gender)&#xA;&#x9;{&#xA;&#x9;&#x9;if (gender != 'F' &amp;&amp; gender != 'M')&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Gender must be either uppercase 'F' or 'M'&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;&#x9;this.gender = gender;&#xA;&#x9;&#x9;children = new ArrayList&lt;Person>()" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="27" end="-265"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="10" charStart="183" charEnd="191" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550490102543" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="56" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ArrayList;&#xA;import java.util.List;&#xA;&#xA;public class Person&#xA;{&#xA;&#x9;private final String name;&#xA;&#x9;private final char gender;&#xA;&#x9;private Person mother, father;&#xA;&#x9;private List&lt;Person> children;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public Person(String name, char gender)&#xA;&#x9;{&#xA;&#x9;&#x9;if (gender != 'F' &amp;&amp; gender != 'M')&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Gender must be either uppercase 'F' or 'M'&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;&#x9;this.gender = gender;&#xA;&#x9;&#x9;children = new ArrayList&lt;Person>();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public String getName()&#xA;&#x9;{&#xA;&#x9;&#x9;return name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public char getGender()&#xA;&#x9;{&#xA;&#x9;&#x9;return gender;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Person getMother()&#xA;&#x9;{&#xA;&#x9;&#x9;return mother;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Person getFather()&#xA;&#x9;{&#xA;&#x9;&#x9;return father;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getChildCount()&#xA;&#x9;{&#xA;&#x9;&#x9;return children.size();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Person getChild(int i)&#xA;&#x9;{&#xA;&#x9;&#x9;return children.get(i);" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="44" end="-7"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550490179606" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="61" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public void addChild(Person child)&#xA;&#x9;{&#xA;&#x9;&#x9;children.add(child);&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="819" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550490275741" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="89" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;if (isMale())&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;child.setFather(this);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;child.setMother(this);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removeChild(Person child)&#xA;&#x9;{&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setMother(Person mother)&#xA;&#x9;{&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setFather(Person father)&#xA;&#x9;{&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private boolean isMale()&#xA;&#x9;{&#xA;&#x9;&#x9;return gender == 'M';&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="884" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550490348168" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="96" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (this.mother == mother)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;// Already mother&#xA;&#x9;&#x9;&#x9;return;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;this.mother = mother;&#xA;&#x9;&#x9;mother.addChild(this);" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="1072" end="-114"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550490398038" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="109" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (children.contains(child))&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;// Already child&#xA;&#x9;&#x9;&#x9;return;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;children.add(child);&#xA;&#x9;&#x9;if (isMale())&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;child.setFather(this);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;child.setMother(this);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removeChild(Person child)&#xA;&#x9;{&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setMother(Person mother)&#xA;&#x9;{&#xA;&#x9;&#x9;if (this.mother == mother)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;// Already mother&#xA;&#x9;&#x9;&#x9;return;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;this.mother = mother;&#xA;&#x9;&#x9;mother.addChild(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setFather(Person father)&#xA;&#x9;{&#xA;&#x9;&#x9;if (this.father == father)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;// Already father&#xA;&#x9;&#x9;&#x9;return;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;this.father = father;&#xA;&#x9;&#x9;father.addChild(this);" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="862" end="-65"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550490523075" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="123" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (children.contains(child) == false)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Child not found in &quot; + toString());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (isMale())&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setMother(Person mother)&#xA;&#x9;{&#xA;&#x9;&#x9;if (this.mother == mother)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;// Already mother&#xA;&#x9;&#x9;&#x9;return;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;this.mother = mother;&#xA;&#x9;&#x9;mother.addChild(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setFather(Person father)&#xA;&#x9;{&#xA;&#x9;&#x9;if (this.father == father)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;// Already father&#xA;&#x9;&#x9;&#x9;return;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;this.father = father;&#xA;&#x9;&#x9;father.addChild(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public String toString()&#xA;&#x9;{&#xA;&#x9;&#x9;return &quot;Name: &quot; + name" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="1097" end="-66"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550490537224" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="123" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" + &quot;'s children&quot;" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="1212" end="-507"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550490571835" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="129" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="child.setFather(null);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;child.setMother(null);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;children.remove(child);" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="1261" end="-470"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550490810308" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="146" errorCount="1" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setMother(Person mother)&#xA;&#x9;{&#xA;&#x9;&#x9;if (this.mother == mother)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;// Already mother&#xA;&#x9;&#x9;&#x9;return;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;this.mother = mother;&#xA;&#x9;&#x9;mother.addChild(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setFather(Person father)&#xA;&#x9;{&#xA;&#x9;&#x9;if (this.father == father)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;// Already father&#xA;&#x9;&#x9;&#x9;return;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;this.father = father;&#xA;&#x9;&#x9;father.addChild(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public String toString()&#xA;&#x9;{&#xA;&#x9;&#x9;return &quot;Name: &quot; + name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private boolean isMale()&#xA;&#x9;{&#xA;&#x9;&#x9;return gender == 'M';&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public static void main(String[] args)&#xA;&#x9;{&#xA;&#x9;&#x9;Person andreas = new Person(&quot;Andreas&quot;, 'M');&#xA;&#x9;&#x9;Person johannes = new Person(&quot;Johannes&quot;, 'M');&#xA;&#x9;&#x9;Person bjorn = new Person(&quot;Bjorn&quot;, 'M');&#xA;&#x9;&#x9;Person sissel = new Person(&quot;Sissel&quot;, 'F');&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;andreas.setFather(bjorn);&#xA;&#x9;&#x9;andreas.setMother(sissel);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;bjorn.addChild(johannes);&#xA;&#x9;&#x9;sissel.addChild(johannes);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="1356" end="-7"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="92" charStart="1355" charEnd="1356" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550490845380" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="146" errorCount="1" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(bjorn.getChildCount());" edit="/1/@proposals.0/@proposals.0/@attempts.12/@edit" start="2179" end="-7"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="92" charStart="1355" charEnd="1356" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550490868080" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="148" errorCount="1" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;System.out.println(johannes.getFather());&#xA;&#x9;&#x9;System.out.println(andreas.getFather());&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.13/@edit" start="2223" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="92" charStart="1355" charEnd="1356" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550490903743" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="152" errorCount="1" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Person someDude = new Person(&quot;Heyo&quot;, 'M');&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;andreas.setFather(bjorn);&#xA;&#x9;&#x9;andreas.setMother(sissel);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;bjorn.addChild(johannes);&#xA;&#x9;&#x9;sissel.addChild(johannes);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(bjorn.getChildCount());&#xA;&#x9;&#x9;System.out.println(johannes.getFather());&#xA;&#x9;&#x9;System.out.println(andreas.getFather());&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;andreas.setFather(someDude" edit="/1/@proposals.0/@proposals.0/@attempts.14/@edit" start="2056" end="-52"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="92" charStart="1355" charEnd="1356" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550490915566" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="153" errorCount="1" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;System.out.println(bjorn.getChildCount());&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.15/@edit" start="2432" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="92" charStart="1355" charEnd="1356" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550490963179" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="163" errorCount="1" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (this.mother != null)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;this.mother.removeChild(this);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;this.mother = mother;&#xA;&#x9;&#x9;mother.addChild(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setFather(Person father)&#xA;&#x9;{&#xA;&#x9;&#x9;if (this.father == father)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;// Already father&#xA;&#x9;&#x9;&#x9;return;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (this.father != null)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;this.father.removeChild(this)" edit="/1/@proposals.0/@proposals.0/@attempts.16/@edit" start="1477" end="-849"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="92" charStart="1355" charEnd="1356" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550490972089" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="163" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";" edit="/1/@proposals.0/@proposals.0/@attempts.17/@edit" start="1356" end="-1270"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550491122430" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="163" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" &amp;&amp; father != null" edit="/1/@proposals.0/@proposals.0/@attempts.18/@edit" start="1740" end="-887"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550491153766" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="163" warningCount="1" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//andreas.setFather(someDude);&#xA;&#x9;&#x9;//System.out.println(andreas.getFather());&#xA;&#x9;&#x9;//" edit="/1/@proposals.0/@proposals.0/@attempts.19/@edit" start="2522" end="-49"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="147" charStart="2226" charEnd="2234" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550491160227" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="163" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="andreas.setFather(someDude);&#xA;&#x9;&#x9;System.out.println(andreas.getFather());&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.20/@edit" start="2522" end="-49"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550491269839" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="165" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=")&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;Person tmp = this.father;&#xA;&#x9;&#x9;&#x9;this.father = null;&#xA;&#x9;&#x9;&#x9;tmp" edit="/1/@proposals.0/@proposals.0/@attempts.21/@edit" start="1740" end="-867"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550491317033" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="169" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="// Temporarily cache mother to avoid infinite loop&#xA;&#x9;&#x9;&#x9;Person tmp = this.mother;&#xA;&#x9;&#x9;&#x9;this.mother = null;&#xA;&#x9;&#x9;&#x9;tmp.removeChild(this);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;this.mother = mother;&#xA;&#x9;&#x9;mother.addChild(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setFather(Person father)&#xA;&#x9;{&#xA;&#x9;&#x9;if (this.father == father)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;// Already father&#xA;&#x9;&#x9;&#x9;return;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (this.father != null)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;// Temporarily cache father to avoid infinite loop" edit="/1/@proposals.0/@proposals.0/@attempts.22/@edit" start="1510" end="-926"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550491385150" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="179" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="mother == this)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (this.mother != null)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;// Temporarily cache mother to avoid infinite loop&#xA;&#x9;&#x9;&#x9;Person tmp = this.mother;&#xA;&#x9;&#x9;&#x9;this.mother = null;&#xA;&#x9;&#x9;&#x9;tmp.removeChild(this);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;this.mother = mother;&#xA;&#x9;&#x9;mother.addChild(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setFather(Person father)&#xA;&#x9;{&#xA;&#x9;&#x9;if (this.father == father)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;// Already father&#xA;&#x9;&#x9;&#x9;return;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (father == this)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException()" edit="/1/@proposals.0/@proposals.0/@attempts.23/@edit" start="1482" end="-1019"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550491492999" resourcePath="/ovinger/src/objectstructures/Person.java" sizeMeasure="189" className="objectstructures.Person">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&quot;Person cannot be its own mother&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (mother.getGender() != 'F')&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Mother must be female&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (this.mother != null)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;// Temporarily cache mother to avoid infinite loop&#xA;&#x9;&#x9;&#x9;Person tmp = this.mother;&#xA;&#x9;&#x9;&#x9;this.mother = null;&#xA;&#x9;&#x9;&#x9;tmp.removeChild(this);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;this.mother = mother;&#xA;&#x9;&#x9;mother.addChild(this);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setFather(Person father)&#xA;&#x9;{&#xA;&#x9;&#x9;if (this.father == father)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;// Already father&#xA;&#x9;&#x9;&#x9;return;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (father == this)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Person cannot be its own father&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (father.getGender() != 'M')&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Father must be male&quot;" edit="/1/@proposals.0/@proposals.0/@attempts.24/@edit" start="1540" end="-1020"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550490846538" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>2
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550490868832" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>2
Name: Bjorn
Name: Bjorn
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550490904300" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>2
Name: Bjorn
Name: Bjorn
Name: Heyo
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550490915940" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>2
Name: Bjorn
Name: Bjorn
Name: Heyo
2
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550490974276" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>2
Name: Bjorn
Name: Bjorn
Exception in thread &quot;main&quot; java.lang.StackOverflowError
	at java.base/java.util.ArrayList.indexOfRange(ArrayList.java:330)
	at java.base/java.util.ArrayList.indexOf(ArrayList.java:317)
	at java.base/java.util.ArrayList.contains(ArrayList.java:306)
	at ovinger/objectstructures.Person.removeChild(Person.java:78)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550491123685" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>2
Name: Bjorn
Name: Bjorn
Exception in thread &quot;main&quot; java.lang.NullPointerException
	at ovinger/objectstructures.Person.setFather(Person.java:126)
	at ovinger/objectstructures.Person.removeChild(Person.java:85)
	at ovinger/objectstructures.Person.setFather(Person.java:122)
	at ovinger/objectstructures.Person.main(Person.java:159)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550491154443" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>2
Name: Bjorn
Name: Bjorn
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550491272452" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>2
Name: Bjorn
Name: Bjorn
Name: Heyo
1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550491385900" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>2
Name: Bjorn
Name: Bjorn
Name: Heyo
1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550491494149" mode="run" className="objectstructures.Person">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Person</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>2
Name: Bjorn
Name: Bjorn
Name: Heyo
1
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550490588802" completion="0.38461538461538464" testRunName="objectstructures.PersonTest" successCount="5" failureCount="8">
          <successTests>testMorskapSetMother</successTests>
          <successTests>testMorskapAddChild</successTests>
          <successTests>testFarskapAddChild</successTests>
          <successTests>testFarskapSetFather</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testFarbytteAddChild</failureTests>
          <failureTests>testMorbytteAddChild</failureTests>
          <failureTests>testMorbytteSetMother</failureTests>
          <failureTests>testSelvmorskapIllegalArgumentException</failureTests>
          <failureTests>testMorskapIllegalArgumentException</failureTests>
          <failureTests>testFarbytteSetFather</failureTests>
          <failureTests>testSelvfarskapIllegalArgumentException</failureTests>
          <failureTests>testFarskapIllegalArgumentException</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550491324336" completion="0.6923076923076923" testRunName="objectstructures.PersonTest" successCount="9" failureCount="4">
          <successTests>testMorskapSetMother</successTests>
          <successTests>testFarbytteAddChild</successTests>
          <successTests>testMorbytteAddChild</successTests>
          <successTests>testMorbytteSetMother</successTests>
          <successTests>testFarbytteSetFather</successTests>
          <successTests>testMorskapAddChild</successTests>
          <successTests>testFarskapAddChild</successTests>
          <successTests>testFarskapSetFather</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testSelvmorskapIllegalArgumentException</failureTests>
          <failureTests>testMorskapIllegalArgumentException</failureTests>
          <failureTests>testSelvfarskapIllegalArgumentException</failureTests>
          <failureTests>testFarskapIllegalArgumentException</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550491388961" completion="0.8461538461538461" testRunName="objectstructures.PersonTest" successCount="11" failureCount="2">
          <successTests>testMorskapSetMother</successTests>
          <successTests>testFarbytteAddChild</successTests>
          <successTests>testMorbytteAddChild</successTests>
          <successTests>testMorbytteSetMother</successTests>
          <successTests>testSelvmorskapIllegalArgumentException</successTests>
          <successTests>testFarbytteSetFather</successTests>
          <successTests>testMorskapAddChild</successTests>
          <successTests>testSelvfarskapIllegalArgumentException</successTests>
          <successTests>testFarskapAddChild</successTests>
          <successTests>testFarskapSetFather</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testMorskapIllegalArgumentException</failureTests>
          <failureTests>testFarskapIllegalArgumentException</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550491497459" completion="1.0" testRunName="objectstructures.PersonTest" successCount="13">
          <successTests>testMorskapSetMother</successTests>
          <successTests>testFarbytteAddChild</successTests>
          <successTests>testMorbytteAddChild</successTests>
          <successTests>testMorbytteSetMother</successTests>
          <successTests>testSelvmorskapIllegalArgumentException</successTests>
          <successTests>testMorskapIllegalArgumentException</successTests>
          <successTests>testFarbytteSetFather</successTests>
          <successTests>testMorskapAddChild</successTests>
          <successTests>testSelvfarskapIllegalArgumentException</successTests>
          <successTests>testFarskapIllegalArgumentException</successTests>
          <successTests>testFarskapAddChild</successTests>
          <successTests>testFarskapSetFather</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a">
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1549970776592" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1549970777336" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1549970778238" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1549971039406" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1549971039864" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1549971041240" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1549971045066" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1549972204829" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>

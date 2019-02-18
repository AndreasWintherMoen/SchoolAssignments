<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Card">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Card class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="encapsulation.Card"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Card class, to test it."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="encapsulation.Card"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Card class, by running the CardTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="encapsulation.CardTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Using Eclipse">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549195484666" resourcePath="/ovinger/src/encapsulation/Card.java" className="encapsulation.Card">
          <edit xsi:type="exercise:StringEdit" storedString=""/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549195521421" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="5" className="encapsulation.Card">
          <edit xsi:type="exercise:StringEdit" storedString="package encapsulation;&#xA;public class Card&#xA;{&#xA;&#x9;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549195720104" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="27" errorCount="3" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private char suit;&#xA;&#x9;private int value;&#xA;&#x9;&#xA;&#x9;public Card(char suit, int value)&#xA;&#x9;{&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public char getSuit()&#xA;&#x9;{&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getFace()&#xA;&#x9;{&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public String toStrin()&#xA;&#x9;{&#xA;&#x9;&#x9;return (Character.toString(suit) + Integer.toString(value));&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="44" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="23" charStart="224" charEnd="233" severity="2" problemCategory="50" problemType="67109498"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549195723514" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="27" errorCount="2" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="g" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="231" end="-75"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="12" charStart="144" charEnd="153" severity="2" problemCategory="50" problemType="603979884"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549195874566" resourcePath="/ovinger/src/encapsulation/Card.java" sizeMeasure="42" className="encapsulation.Card">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (isValidCard(suit, value) == false) &#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;this.suit = suit;&#xA;&#x9;&#x9;&#x9;this.value = value;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public char getSuit()&#xA;&#x9;{&#xA;&#x9;&#x9;return suit;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getFace()&#xA;&#x9;{&#xA;&#x9;&#x9;return value;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public String toString()&#xA;&#x9;{&#xA;&#x9;&#x9;return (Character.toString(suit) + Integer.toString(value));&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private boolean isValidCard(char suit, int value)&#xA;&#x9;{&#xA;&#x9;&#x9;if (value &lt; 1 || value > 13) return false;&#xA;&#x9;&#x9;if (suit != 'S' &amp;&amp; suit != 'H' &amp;&amp; suit != 'D' &amp;&amp; suit != 'C') return false;&#xA;&#x9;&#x9;return true" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="125" end="-8"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1549197116466" completion="1.0" testRunName="encapsulation.CardTest" successCount="2">
          <successTests>testToString</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a"/>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>

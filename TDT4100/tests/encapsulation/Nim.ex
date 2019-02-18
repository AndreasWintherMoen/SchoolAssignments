<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Nim">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Nim class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="encapsulation.Nim"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Nim class, to test it."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="encapsulation.Nim"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Nim class, by running the NimTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="encapsulation.NimTest"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549194944402" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="78" className="encapsulation.Nim">
          <edit xsi:type="exercise:StringEdit" storedString="package encapsulation;&#xA;public class Nim&#xA;{&#xA;&#x9;int[] piles;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public Nim(int pileSize)&#xA;&#x9;{&#xA;&#x9;&#x9;piles = new int[3];&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for (int i = 0; i &lt; 3; i++)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;piles[i] = pileSize;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Nim()&#xA;&#x9;{&#xA;&#x9;&#x9;this(10);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public void removePieces(int number, int targetPile)&#xA;&#x9;{&#xA;&#x9;&#x9;if (isGameOver())&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (isValidMove(number, targetPile))&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;piles[targetPile] -= number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException();&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isValidMove(int number, int targetPile)&#xA;&#x9;{&#xA;&#x9;&#x9;if (targetPile > 2 || targetPile &lt; 0) return false;&#xA;&#x9;&#x9;if (piles[targetPile] &lt; number) return false;&#xA;&#x9;&#x9;if (isGameOver()) return false;&#xA;&#x9;&#x9;return true;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isGameOver()&#xA;&#x9;{&#xA;&#x9;&#x9;for (int pile : piles)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;if (pile > 0) return false;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;return true;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getPile(int targetPile)&#xA;&#x9;{&#xA;&#x9;&#x9;return piles[targetPile];&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public String toString()&#xA;&#x9;{&#xA;&#x9;&#x9;String output = &quot;Game state: &quot; + (isGameOver() ? &quot;finished&quot; : &quot;running&quot;) + &quot;\n&quot;;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for (int pile : piles)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;&#x9;output += &quot;Pile: &quot; + Integer.toString(pile + 1) + &quot;\n&quot;;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;return output;&#xA;&#x9;}&#xA;&#x9;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549194988371" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="78" className="encapsulation.Nim">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="== 0) return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;return fals" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="775" end="-326"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549195112471" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="78" className="encapsulation.Nim">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="number > piles[targetPile]" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="606" end="-508"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549195313613" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="79" className="encapsulation.Nim">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&lt; 0) return false;&#xA;&#x9;&#x9;if (number " edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="613" end="-527"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549195357238" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="79" className="encapsulation.Nim">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="=" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="614" end="-558"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1549194964916" completion="0.25" testRunName="encapsulation.NimTest" successCount="1" failureCount="3">
          <successTests>testConstructor</successTests>
          <failureTests>testGameOver</failureTests>
          <failureTests>testIsValidMove</failureTests>
          <failureTests>testRemovePieces</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1549194991321" completion="0.5" testRunName="encapsulation.NimTest" successCount="2" failureCount="2">
          <successTests>testGameOver</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testIsValidMove</failureTests>
          <failureTests>testRemovePieces</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1549195129474" completion="0.5" testRunName="encapsulation.NimTest" successCount="2" failureCount="2">
          <successTests>testGameOver</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testIsValidMove</failureTests>
          <failureTests>testRemovePieces</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1549195205278" completion="0.5" testRunName="encapsulation.NimTest" successCount="2" failureCount="2">
          <successTests>testGameOver</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testIsValidMove</failureTests>
          <failureTests>testRemovePieces</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1549195320713" completion="0.5" testRunName="encapsulation.NimTest" successCount="2" failureCount="2">
          <successTests>testGameOver</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testIsValidMove</failureTests>
          <failureTests>testRemovePieces</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1549195365131" completion="1.0" testRunName="encapsulation.NimTest" successCount="4">
          <successTests>testGameOver</successTests>
          <successTests>testIsValidMove</successTests>
          <successTests>testRemovePieces</successTests>
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

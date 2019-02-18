<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="RPNCalc">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the RPNCalc class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="encapsulation.RPNCalc"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the RPNCalc class, to test it."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="encapsulation.RPNCalc"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the RPNCalc class, by running the RPNCalcTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="encapsulation.RPNCalcTest"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549197371840" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:StringEdit" storedString=""/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549197913055" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="23" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:StringEdit" storedString="package encapsulation;&#xA;&#xA;import java.util.*;&#xA;&#xA;public class RPNCalc&#xA;{&#xA;&#x9;Stack&lt;Double> numbers;&#xA;&#x9;&#xA;&#x9;public RPNCalc()&#xA;&#x9;{&#xA;&#x9;&#x9;numbers = new Stack&lt;Double>();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void push(double newNum)&#xA;&#x9;{&#xA;&#x9;&#x9;numbers.push(newNum);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double pop()&#xA;&#x9;{&#xA;&#x9;&#x9;return numbers.pop();&#xA;&#x9;}&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549197950551" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="25" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (numbers.empty()) return Double.NaN;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="244" end="-28"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549198267267" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="30" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public double peek(int n)&#xA;&#x9;{&#xA;&#x9;&#x9;return numbers.get(numbers.size() - n);&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="314" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549198280856" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="32" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (n == 0) return numbers.peek();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="348" end="-46"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549198349183" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="37" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="getSize() - n);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getSize()&#xA;&#x9;{&#xA;&#x9;&#x9;return numbers.size(" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="407" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549198559150" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="59" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public void performOperation(char n)&#xA;&#x9;{&#xA;&#x9;&#x9;double x = pop();&#xA;&#x9;&#x9;double y = pop();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;switch (n)&#xA;&#x9;&#x9;{&#xA;&#x9;&#x9;case '+':&#xA;&#x9;&#x9;&#x9;push(y + x);&#xA;&#x9;&#x9;case '-':&#xA;&#x9;&#x9;&#x9;push(y - x);&#xA;&#x9;&#x9;case '*':&#xA;&#x9;&#x9;&#x9;push (y * x);&#xA;&#x9;&#x9;case '/':&#xA;&#x9;&#x9;&#x9;push(y / x);&#xA;&#x9;&#x9;default:&#xA;&#x9;&#x9;&#x9;push(y);&#xA;&#x9;&#x9;&#x9;push(x);&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException();&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="481" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549198674476" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="67" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public static void main(String[] args)&#xA;&#x9;{&#xA;&#x9;&#x9;RPNCalc calculator = new RPNCalc();&#xA;&#x9;&#x9;calculator.push(10.0);&#xA;&#x9;&#x9;calculator.push(5.0);&#xA;&#x9;&#x9;calculator.performOperation('+');&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="780" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549198687268" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="68" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;System.out.println(calculator.peek(0));&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="949" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549198725151" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="72" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;break;&#xA;&#x9;&#x9;case '-':&#xA;&#x9;&#x9;&#x9;push(y - x);&#xA;&#x9;&#x9;&#x9;break;&#xA;&#x9;&#x9;case '*':&#xA;&#x9;&#x9;&#x9;push (y * x);&#xA;&#x9;&#x9;&#x9;break;&#xA;&#x9;&#x9;case '/':&#xA;&#x9;&#x9;&#x9;push(y / x);&#xA;&#x9;&#x9;&#x9;break" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="614" end="-301"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549198767299" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="74" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="umbers.empty()) return Double.NaN;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if (n" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="353" end="-683"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549198809262" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="75" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ush(2.0);&#xA;&#x9;&#x9;//calculator.p" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="1011" end="-70"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549198812931" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="75" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="1" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="1096" end="-10"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549198822509" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="75" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" - 1" edit="/1/@proposals.0/@proposals.0/@attempts.12/@edit" start="465" end="-642"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1549198868718" resourcePath="/ovinger/src/encapsulation/RPNCalc.java" sizeMeasure="79" className="encapsulation.RPNCalc">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="case '~':&#xA;&#x9;&#x9;&#x9;push(x);&#xA;&#x9;&#x9;&#x9;push(y);&#xA;&#x9;&#x9;&#x9;break;&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.13/@edit" start="788" end="-323"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1549198688638" mode="run" className="encapsulation.RPNCalc">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.RPNCalc</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.IllegalArgumentException
	at ovinger/encapsulation.RPNCalc.performOperation(RPNCalc.java:56)
	at ovinger/encapsulation.RPNCalc.main(RPNCalc.java:65)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1549198726420" mode="run" className="encapsulation.RPNCalc">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.RPNCalc</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>15.0
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1549198814153" mode="run" className="encapsulation.RPNCalc">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.RPNCalc</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>2.0
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1549198823341" mode="run" className="encapsulation.RPNCalc">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.RPNCalc</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>5.0
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1549198577553" completion="0.3" testRunName="encapsulation.RPNCalcTest" successCount="3" failureCount="1" errorCount="6">
          <successTests>testPop</successTests>
          <successTests>testPush</successTests>
          <successTests>testGetSize</successTests>
          <failureTests>testPeek</failureTests>
          <errorTests>testPeekEmpty</errorTests>
          <errorTests>testAdd</errorTests>
          <errorTests>testDiv</errorTests>
          <errorTests>testSub</errorTests>
          <errorTests>testMult</errorTests>
          <errorTests>testSwap</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1549198731105" completion="0.7" testRunName="encapsulation.RPNCalcTest" successCount="7" failureCount="1" errorCount="2">
          <successTests>testAdd</successTests>
          <successTests>testDiv</successTests>
          <successTests>testPop</successTests>
          <successTests>testSub</successTests>
          <successTests>testMult</successTests>
          <successTests>testPush</successTests>
          <successTests>testGetSize</successTests>
          <failureTests>testPeek</failureTests>
          <errorTests>testPeekEmpty</errorTests>
          <errorTests>testSwap</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1549198776282" completion="0.8" testRunName="encapsulation.RPNCalcTest" successCount="8" failureCount="1" errorCount="1">
          <successTests>testPeekEmpty</successTests>
          <successTests>testAdd</successTests>
          <successTests>testDiv</successTests>
          <successTests>testPop</successTests>
          <successTests>testSub</successTests>
          <successTests>testMult</successTests>
          <successTests>testPush</successTests>
          <successTests>testGetSize</successTests>
          <failureTests>testPeek</failureTests>
          <errorTests>testSwap</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1549198826484" completion="0.9" testRunName="encapsulation.RPNCalcTest" successCount="9" errorCount="1">
          <successTests>testPeekEmpty</successTests>
          <successTests>testAdd</successTests>
          <successTests>testDiv</successTests>
          <successTests>testPop</successTests>
          <successTests>testSub</successTests>
          <successTests>testMult</successTests>
          <successTests>testPeek</successTests>
          <successTests>testPush</successTests>
          <successTests>testGetSize</successTests>
          <errorTests>testSwap</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1549198872539" completion="1.0" testRunName="encapsulation.RPNCalcTest" successCount="10">
          <successTests>testPeekEmpty</successTests>
          <successTests>testAdd</successTests>
          <successTests>testDiv</successTests>
          <successTests>testPop</successTests>
          <successTests>testSub</successTests>
          <successTests>testMult</successTests>
          <successTests>testPeek</successTests>
          <successTests>testPush</successTests>
          <successTests>testSwap</successTests>
          <successTests>testGetSize</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1549199088604" completion="1.0" testRunName="encapsulation.RPNCalcTest" successCount="10">
          <successTests>testPeekEmpty</successTests>
          <successTests>testAdd</successTests>
          <successTests>testDiv</successTests>
          <successTests>testPop</successTests>
          <successTests>testSub</successTests>
          <successTests>testMult</successTests>
          <successTests>testPeek</successTests>
          <successTests>testPush</successTests>
          <successTests>testSwap</successTests>
          <successTests>testGetSize</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1549199094447" completion="1.0" testRunName="encapsulation.RPNCalcTest" successCount="10">
          <successTests>testPeekEmpty</successTests>
          <successTests>testAdd</successTests>
          <successTests>testDiv</successTests>
          <successTests>testPop</successTests>
          <successTests>testSub</successTests>
          <successTests>testMult</successTests>
          <successTests>testPeek</successTests>
          <successTests>testPush</successTests>
          <successTests>testSwap</successTests>
          <successTests>testGetSize</successTests>
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

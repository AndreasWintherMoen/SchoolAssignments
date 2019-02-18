package encapsulation;

import java.util.*;

public class RPNCalc
{
	Stack<Double> numbers;
	
	public RPNCalc()
	{
		numbers = new Stack<Double>();
	}
	
	public void push(double newNum)
	{
		numbers.push(newNum);
	}
	
	public double pop()
	{
		if (numbers.empty()) return Double.NaN;
		
		return numbers.pop();
	}
	
	public double peek(int n)
	{
		if (numbers.empty()) return Double.NaN;
		
		if (n == 0) return numbers.peek();
		
		return numbers.get(getSize() - n - 1);
	}
	
	public int getSize()
	{
		return numbers.size();
	}
	
	public void performOperation(char n)
	{
		double x = pop();
		double y = pop();
		
		switch (n)
		{
		case '+':
			push(y + x);
			break;
		case '-':
			push(y - x);
			break;
		case '*':
			push (y * x);
			break;
		case '/':
			push(y / x);
			break;
		case '~':
			push(x);
			push(y);
			break;
		default:
			push(y);
			push(x);
			throw new IllegalArgumentException();
		}
	}
	
	public static void main(String[] args)
	{
		RPNCalc calculator = new RPNCalc();
		calculator.push(10.0);
		calculator.push(5.0);
		calculator.push(2.0);
		//calculator.performOperation('+');
		System.out.println(calculator.peek(1));
	}
}
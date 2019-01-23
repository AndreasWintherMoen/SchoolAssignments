package stateandbehavior;
public class LineEditor
{
	private String text;
	private int insertionIndex;
	
	public LineEditor()
	{
		text = new String();
		insertionIndex = 0;
	}
	
	public LineEditor(String text)
	{
		this.text = new String(text);
		insertionIndex = 0;
	}
	
	public void left()
	{
		insertionIndex = Math.max((--insertionIndex), 0);
	}
	
	public void right()
	{
		insertionIndex = Math.min(++insertionIndex,  text.length());
	}
	
	public void insertString(String s)
	{
		StringBuilder sb = new StringBuilder();
		
		if (insertionIndex > 0)
		{
			sb.append(text.substring(0, insertionIndex));
		}
		
		sb.append(s);
		
		if (insertionIndex < text.length())
		{
			sb.append(text.substring(insertionIndex));
		}
		
		text = sb.toString();
		
		setInsertionIndex(insertionIndex + s.length());
	}
	
	public void deleteLeft()
	{
		if (insertionIndex <= 0) return;
		
		String newText = text.substring(0, insertionIndex - 1) + text.substring(insertionIndex);
		
		text = newText;

		setInsertionIndex(insertionIndex - 1);
	}
	
	public void deleteRight()
	{
		if (insertionIndex >= text.length()) return;
		
		String newText = text.substring(0, insertionIndex) + text.substring(insertionIndex + 1);
		
		text = newText;
	}
	
	public String getText()
	{
		return text;
	}
	
	public void setText(String newText)
	{	
		text = newText;
	}
	
	public int getInsertionIndex()
	{
		return insertionIndex;
	}
	
	public void setInsertionIndex(int i)
	{
		i = Math.min(i,  text.length());
		i = Math.max(0,  i);
		
		insertionIndex = i;
	}
}
import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}

public int findFirstVowel(String word){
  for(int i = 0; i < word.length(); i++)
  {
  char currentLetter = word.charAt(i);
  if (currentLetter == 'a' || currentLetter == 'e' ||currentLetter == 'i' ||currentLetter == 'o' ||currentLetter == 'u')
  {
  return i;
  }
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	// else
	// {
	// 	return "ERROR!";
	// }
	if(findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}
	// else
	// {
	// 	return "ERROR!";
	// }
	if(sWord.charAt(0) == 'q' && sWord.charAt(1) == 'u')
	{
		return sWord.substring(2) + "quay";
	}
	// else
	// {
	// 	return "ERROR!";
	// }
	if(findFirstVowel(sWord) != -1 && findFirstVowel(sWord) != 0)
	{
		return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
	}
	else
	{
		return "ERROR!";
	}
}
import java.util.*;

public void setup() {
	String lines[] = loadStrings("LowellHymn.txt");
	for(int i = 0; i < lines.length; i++)
	{
		//breaks one line in the .txt file into separate strings
		String temp[] = lines[i].split("\\s+");
		System.out.println(" ");
		for(int j = 0; j < temp.length; j++)
		{
			System.out.print(pigLatin(temp[j]) + " ");
			
		}
	}
}
public void draw()
{
}

public int findFirstVowel(String word){
  for(int i = 0; i < word.length(); i++)
  {
  char currentLetter = word.charAt(i);
  if (currentLetter == 'a' || currentLetter == 'e' ||currentLetter == 'i' ||currentLetter == 'o' ||currentLetter == 'u'||currentLetter == 'U'||currentLetter == 'O'||currentLetter == 'A')
  {
  return i;
  }
  }
  return -1;
}
public int checkPunctuation(String word){
  for(int i = 0; i < word.length(); i++)
  {
  char currentLetter = word.charAt(i);
  if (currentLetter == ',' || currentLetter == '.')
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
		String temp = sWord.substring(findFirstVowel(sWord)) + sWord.substring(0, findFirstVowel(sWord)) + "ay" ;

		if(checkPunctuation(sWord) != -1)
	{
		return temp.substring(0, checkPunctuation(temp)) + temp.substring(checkPunctuation(temp) + 1) + sWord.substring(checkPunctuation(sWord));
	}
		return temp;
	}

	else
	{
		return "ERROR!";
	}
}
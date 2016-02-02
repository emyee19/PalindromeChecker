public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String em = noSpaces(word);
  em = noCapitals(em);
  em = onlyLetters(em);

if (em.equals(reverse(em)))
  return true;

  else 

  return false;
    
}

public String reverse(String sWord){
  
  String sNew = new String();

    int nLast = sWord.length()-1;

    for(int nI=nLast; nI>=0; nI--)

        sNew = sNew + 

               sWord.substring(nI,nI+1); 

    return sNew;
 
  
}

public int numLetters(String sString){
  int num = 0;
  for (int i = 0; i< sString.length(); i++) {
  if (Character.isLetter(sString.charAt(i)))  

  num ++;
  }
  return num;
  
} 


public String noCapitals(String sWord){
  return sWord.toLowerCase();
} 


public String noSpaces(String sWord){

  String space = new String();
  
  for (int i = 0; i < sWord.length(); i++)
  {
    if (sWord.charAt(i) != ' ')
    {
      space = space + sWord.charAt(i);
    }
  }
  return space;

} 

public String onlyLetters(String sString){

  if(sString.length() == 0)
    return "";
  else if(Character.isLetter(sString.charAt(0)))
    return sString.charAt(0) + onlyLetters(sString.substring(1));
  else
    return onlyLetters(sString.substring(1));

}

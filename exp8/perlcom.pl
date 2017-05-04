#!/usr/bin/perl
print"1.MATCHING\t2.SUBSTITUTE\t3.TRANSALATE\n";
$choice=<>;
chomp($choice);
print"ENTER THE MAIN STRING\n";
$string=<>;
if($choice==1)
{
	print("you chose match operation\n");
	print"ENTER THE REGULAR EXPRESSION\n";
	$regexp=<>;
	chomp( $regexp );
	if( $string =~ m/\Q$regexp/ )
	{
		print("STRING IS PRESENT\n");
	}
	else
	{
		print("STRING NOT PRESENT \n");
	}
}
elsif($choice==2)
{
	print"YOU CHOSE SUBSTITUTE OPERTION\n";
	print"ENTER THE WORD IN MAIN STRING\n";
	$word=<>;
	chomp( $word );
	print"ENTER WORD TO REPLACE\n";
	$rword=<>;
	chomp( $rword );
	$string=~ s/$word/$rword/;
	print"MODIFIED STRING IS \n$string";
}
elsif($choice==3)
{
	if($string=~ tr/[aeiou]/[AEIOU]/)
	{
		print"$string\n";
	}
	else
	{
		print"$string\n";
	}
}

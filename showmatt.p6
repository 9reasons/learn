#!/usr/bin/env perl6 
use strict;

my constant @fib = 0, 1, *+* … ∞  ; 

# create 10 arrays of three numbers picking from the first 50 fibonacci  
my @n = [@fib[50.rand],@fib[50.rand],@fib[50.rand]]  xx 10;

# create a line to separate rows 
my int $tablewidth = 100 ;
my $sep = "-" x $tablewidth ; 

# populate cells with stuff 
my @str = [ 
    ["+  number of elements in \@n", @n.elems],
    ["+  index of the last element in \@n", @n.end],
    ["+  first array in \@n", @n[0]],
    ["+  last array in \@n", @n[*-1]],
    ["+  number of elements in the first array in \@n", @n[0].elems],
    ["+  last 2 elements in first  array in \@n", @n[0][*-2..*]],
    ["+  reverse order of the first array in \@n", @n[0].reverse],
];


# show what has been done
for 0..@str.end -> $e {
    my $len1 = @str[$e][0].chars ;
    my $len2 = @str[$e][1].chars ;

    my $cell1 =  "{@str[$e][0]}{ " " x ( ($tablewidth/2)- 1 - $len1) }:";
    my $cell2 = " {@str[$e][1]}{ " " x ( ($tablewidth/2)- 2 - $len2) }+";

    $sep.say ;
    "$cell1{}$cell2".say ;
}
$sep.say;

subset Even of Int where * %% 2 ;
multi evnod (Int $a where Even) { say "$a is Even" }
multi evnod (Str $a ) { say "You entered a string: $a" }
multi evnod (Int  $a where not Even ) { say "$a is Odd" }
multi evnod (Array $a ) { say "$a is an Array!" }
multi evnod (Hash $a ) {  say "$a is an Hash!" }

evnod 2 ;
evnod 3 ;
evnod 'test' ;
@n.say ;
evnod @n ;

my %x = <a 1 b 2 c 3>;
''.say;
%x.say;
evnod %x  ;

%x<a>.say ;

for 1..10 -> $e { @n[$e][0].say }   ;

@str.^methods.say ;
exit;
start { sleep 1.5; print «\nhi\n» }
await Supply.from-list(<A B C D E F>).throttle: 1, {
    sleep 0.25;
    .print
}
''.say;

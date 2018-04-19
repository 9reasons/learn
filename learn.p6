#!/usr/bin/env perl6

my %hash = 1 => 'a',
           2 => list <1  a 2  b>, 3 => hash <1 a 2 z> ; 

my $c := %hash{2}[0];

say $c;

my $x = 23;
sub f() is rw { $x };
f() = 42;

say '$x:' ~ $x;  

f() += 2 ;

say 'f() + 2:' ~ f()  ; 

my Code \a = sub { say ‚raw containers don't implement postcircumfix:<( )>‘ };

a.();

f() .=split('');

say $x;
my $string = "\t the cat sat on the mat     " ;

$string .= trim;

my $s = $string.perl;
say "$string.thing";

say «moo»;

say π + 3;

say «list» ;

say 2 ≠ 2;  

say pi² ; 

say π² ;

for 1..10 -> $x {
    say $x;
} 

say «"100° Fährenheit"» ;

say ⅔; 
say ⅔ / ¾; 
say  ൵ ; # Malayalam symbol for ¾

say «൵ ==  ³/4  ==  3/4 == ¾: \  » 
    ~ (൵  == ³/4  ==  3/4 == ¾ ).perl;

say sin(π/2) + 1; 

say π × 4 ÷ 2; 

say sin(π/3)² + sin(π/3)²;

(3**23).^methods.say ;
say (3**23).sqrt ;
say (1 … 199 ).pick(5) ;
say [+] 3 … 15,1,5 ;
say (13.rand.Int … 40).roll(14).pick(6) ;

# Reduce operator
say [\×] 1 … 25 ;

# zip operator
say (1 … 10) Z  (13 … 26) ;
say (1 … 10) Z×  (13 … 26) ;

# Hyperoperator
say 1 «/« (1 … 30 ) »~» "\n";



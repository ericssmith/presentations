# Going Back to the Future
#### A brief survey of the history of programming leading up to the present, illustrated with a 21st-century industrial language, Kotlin

This is a living document and is subject to correction and expansion.

<br/>
<br/>

* * *

### - Etymology for "coherence"

http://www.etymonline.com/index.php?term=coherent

* * *

### - Shorten the conceptual gap

*"... our intellectual powers are rather geared to master static relations and that our powers to visualize processes evolving in time are relatively poorly developed. For that reason we should [...] shorten the conceptual gap between the static program and the dynamic process, to make the correspondence between the program (spread out in text space) and the process (spread out in time) as trivial as possible."*

[Go To Statement Considered Harmful](https://edisciplinas.usp.br/pluginfile.php/1901807/mod_resource/content/1/p147-salton.pdf)



* * *


### - JDK download

http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

*You have to hit checkbox for "Accept License Agreement"*

* * *

### - Intellij download

https://www.jetbrains.com/idea/download

*The Community Edition doesn't include Javascript.*


* * *

### - Kotlin dependencies

```
// build.gradle

dependencies {
    compile "org.jetbrains.kotlin:kotlin-stdlib-jre8:$kotlin_version"
    testCompile group: 'junit', name: 'junit', version: '4.12'
    compile 'com.pholser:junit-quickcheck-core:0.7'
    compile 'com.pholser:junit-quickcheck-generators:0.7'
}
```

http://pholser.github.io/junit-quickcheck/site/0.7/

* * *


### - Manchester Small-Scale Experimental Machine

![Photo of Manchester "Baby"](https://csdl-images.computer.org/mags/an/2005/03/figures/a30441.gif)

*June 21, 1948 - Program runs successfully on first binary, digital, electronic stored-program computer (in which data and instructions are stored in same memory)*

* * *

### - First successful "stored" program (Manchester SSEM)

![Photo of Tom Kilburn's program](http://images.computerhistory.org/revonline/images/500004282-03-01.jpg?w=600)

*Highest proper factor; uses subtraction instead of division*

* * *

### - Highest proper factor (attempt #1)



```
fun main(args: Array<String>) {
    val input = 12
    var remainder = input
    var factor = input - 1

    while (factor > 1) {
	while (remainder >= 0) {
	    if (remainder == 0) {
		println(factor)
		return
	    }
	    remainder = remainder - factor
	}
	remainder = input
	factor--
    }
}
```

- No annotations of type; they are "inferred"
- *val* is unchangeable
- *var* is destructive assignment; value is destroyed elsewhere
- 'remainder' is not remainder at first; Englishy naming not that helpful
- Nested *println* modifies state in the environment, not in the program
- Nested return is a jump (ie GO TO)
- Statement nesting leads to *conceptual gap* that has to be jumped over


#### But is it correct?


* * *

### - Accepted methodology ... find more bugs and make more patches

*"The accepted methodology for program construction was [...]: People would write code and make test runs, then find bugs and make patches, then find more bugs and make more patches, and so on until not being able to discover any further errors, yet always living in dread for fear that a new case would turn up on the next day and lead to a new type of failure"*

[Robert W Floyd, In Memoriam by Donald Knuth](http://www-cs-faculty.stanford.edu/~uno/papers/floyd.ps.gz)

[Video of Knuth talking about Floyd](https://youtu.be/OJsMXu3EPCw?t=29m43s)


* * *

### - Function (extensional)

![Function](https://saylordotorg.github.io/text_intermediate-algebra/section_05/f0f80432cf5e496a04ecfd8ce9423065.png)

* * *

### - Domain, Co-domain, Range

![Domain,Co-domain, Range](https://upload.wikimedia.org/wikipedia/commons/6/64/Codomain2.SVG)

* * *

### - ENIAC

http://s7.computerhistory.org/is/image/CHM/102652279-03-01?$re-medium$

* * *


### - Presper Eckert & John Mauchly

http://1.bp.blogspot.com/-Z_JlpTAseR4/U8zukd-nauI/AAAAAAAAAIk/DN6sDc-wh5E/s1600/8.jpg


*Disclosure of Magnetic Calculating Machine*

http://archive.computerhistory.org/resources/text/Knuth_Don_X4100/PDF_index/k-8-pdf/k-8-u2775-Disclosure.pdf

* * *

### - First Draft of a Report on the EDVAC

*"... a really high speed device would be very limited in its usefulness unless it can rely on M [ie, Memory], rather than on R [ie, I/O], for all the purposes enumerated in 2.4, (a)–(h) [ie, Calculation]"*

http://archive.computerhistory.org/resources/text/Knuth_Don_X4100/PDF_index/k-8-pdf/k-8-u2593-Draft-EDVAC.pdf


*Herman Goldstine & John Von Neumann*

http://blog.hnf.de/wp-content/uploads/2017/01/IAS-Computer.jpg

*Max Newman*

http://www.rutherfordjournal.org/images/cope2.jpg


* * *

### - Guerilla Open Access Manifesto

*"Providing scientific articles to those at elite universities in the First World, but not to children in the Global South?"*

[Guerilla Open Access Manifesto](https://archive.org/stream/GuerillaOpenAccessManifesto/Goamjuly2008_djvu.txt)


<br/>
<img src="https://upload.wikimedia.org/wikipedia/commons/0/0b/Aaron_Swartz_and_Lawrence_Lessig.jpg" width="300">

*Aaron Schwartz*


* * *

### - Coding is not a static process of translation

*"Thus the relation of the coded instruction sequence to the mathematically conceived procedure of (numerical) solution is not a statical one, that of a translation, but highly dynamical ..."* (p.2)

*"Our problem is then to find simple, step-by-step methods, by which these difficulties can be overcome. Since coding is not a static process of translation, but rather the technique of providing a dynamic background to control the automatic evolution of a meaning, it has to be viewed as a logical problem and one that represents a new branch of formal logics."* (p.2)

*"We now proceed to analyze the procedings by which one can build up the appropriate coded sequence for a given problem — or rather for a given numerical method to solve that problem. As was pointed out in 7.1, this is not a mere question of translation (of a mathematical text into a code), but rather a question of providing a control scheme for a highly dynamical process, all parts of which may undergo repeated and relevant changes in the course of this process."* (p.4)

*"We therefore propose to begin the planning of a coded sequence by laying out a schematic of the course of C through that sequence, i.e. through the required region of the selectron memory. This schematic is the __flow diagram__ of C"* (p.4)

#### Planning and Coding of Problems for an Electronic Computing Instrument

https://library.ias.edu/files/pdfs/ecp/planningcodingof0103inst.pdf

* * *

### - Assigning Meanings to Programs

https://classes.soe.ucsc.edu/cmps290g/Fall09/Papers/AssigningMeanings1967.pdf

* * *

### - Highest proper factor (as pseudo-assembly)

```
	   n ∉ ℙ  (where ℙ is the set of prime numbers)
	1. r ⟵ n
	2. f ⟵ r - 1
INNER:  3. if (r = 0?) goto EXIT
OUTER:  4. if (f = 1?) goto NEXT
	5. r ⟵ r - f
	6. goto INNER
NEXT:   7. f ⟵ f - 1
	8. r ⟵ n
	9. goto OUTER
EXIT:  10.
```

- Inspired by Hing Leung "Program Correctness" project http://bit.ly/2xrshIW
- Goal makes sense only for particular input set (non-Prime numbers)
- Termination condition moved to the outside
- Structured loops (ie *while*) become conditional jumps
- Loops are book-ended by two gotos
- Loop check is inverted from original structured version



* * *

### - Highest proper factor (as flow chart)

![Flow Chart](https://github.com/ericssmith/presentations/blob/master/vtcc9/flowchart.png)


- The starting and ending assertions are *assumed* to be true. The "program proof" is the assertion sequence in between.
-


* * *

### - Highest proper factor (attempt #2)

```
fun main(args: Array<String>) {
    val input = 12
    var remainder = input
    var factor = input - 1

    loop@
    while (factor > 1) {
	while (remainder > 0) {
	    remainder = remainder - factor
	}
	if (remainder == 0) break@loop
	factor--
	remainder = input
    }

    println(factor)
}
```

- Jump on terminating condition
- Output moved to boundary with environment
- Domain is incorrect; results in '1' for prime numbers

* * *

stub

* * *

stub



* * *

### - A program ...

*"A FORTRAN source program consists of a sequence of FORTRAN statements"* (p7)

[The Automatic Coding System for the IBM 704 EDPM](https://www.fortran.com/FortranForTheIBM704.pdf)



*"In IPL a program ... is a system of subroutines ... organized in a roughly hierarchical fashion."* (p16)

[Programming the Logic Theory Machine](http://bitsavers.informatik.uni-stuttgart.de/pdf/rand/ipl/P-954_Programming_The_Logic_Theory_Machine_Jan57.pdf)


Mark Priestly compares the history of the two approaches in

[AI and the Origins of the Functional Programming Language Style](http://www.markpriestley.net/pdfs/AIandFunctionalStyle.pdf)


* * *

### - Symbolic computation

*"...whenever numbers meaning __operations__ and not __quantities__ ... It might have been arranged that all
... numbers meaning __operations__ should have appeared on some separate portion of the engine from that which presents numerical __quantities__"* (p16)

*"The operating mechanism can even be thrown into action independently of any object to operate upon .... Again, it might act upon other things besides __number__"* (p17)


[Sketch of the Analytical Engine](https://history-computer.com/Library/Sketch%20of%20Engine.pdf)

<br/>
<img src="http://blogs.bodleian.ox.ac.uk/wp-content/uploads/sites/163/2015/10/AdaByron-1850-1000x1200-e1444805848856.jpg" width="300">

*Ada Lovelace*

Lovelace arguably anticipates Gödel's use of numbers to represent logical propositions

*"The basic signs of the system P are now ordered in one-to-one correspondence with natural numbers"* (p45)

[On Formally Undecidable Propositions of Principia Mathematica and Related Systems](http://jacqkrol.x10.mx/assets/articles/godel-1931.pdf)

[Original German](http://www.w-k-essler.de/pdfs/goedel.pdf)


Note also that Gödel introduces a notion of computability using recursive functions.

* * *

### - An entirely different kind of power ... the ability to do recursions

*"An entirely different kind of power arises from the flexibility of the hierarchy -- the ability to do recursions. An instruction may be used in its own defining subroutine, or in any of the subroutines connected with its definition, in any way whatsoever provided that the routine does not modify itself and that the entire process terminates."* (p34)

http://bitsavers.informatik.uni-stuttgart.de/pdf/rand/ipl/P-954_Programming_The_Logic_Theory_Machine_Jan57.pdf


* * *

### - Conditional expression

*"The object of this note is to advocate that the IAL language be extended to include two additional additional notations: __conditional expressions__ and __recursive definitions__"*

```
( p₁ → e₁, ..., pₓ → eₓ )
```

```
gcd(m,n) = (m > n → gcd(n, m),
	   rem(n,m) = 0 → m,
	   T → gcd(rem(n,m), m))
```


[Letters to the Editor, Communications of the ACM, I no.12 1958](http://dl.acm.org/citation.cfm?id=1773349&dl=ACM&coll=DL&CFID=809180756&CFTOKEN=13625595)

You have to pay $15 to read this one-page letter.

<img src="https://c1.staticflickr.com/7/6218/6277562781_a84386cee5_b.jpg" width="300">

*John McCarthy*

* * *


### - Greatest Common Divisor with Conditional Expression & Recursion

```
// McCarthy's algorithm
fun gcd(m: Int, n: Int): Int =
	if (m > n) gcd(n, m)
	else if (n % m == 0) m
	else gcd(n % m, m)
```

```
// Euclid's algorithm
fun gcd(m: Int, n: Int): Int =
	if (m % n == 0) n
	else gcd(n, m % n)
```


* * *

### - Greatest proper factor (attempt #3)

```
fun main(args: Array<String>) {
    val input = 12

    val result = checkFactors(input, input - 1)

    println(result)
}


fun properFactor(remainder: Int, factor: Int): Boolean {
    return if (remainder > 0) properFactor(remainder - factor, factor)
    else remainder == 0
}


tailrec fun checkFactors(n: Int, trial: Int): Int {
    return if (properFactor(n, trial)) trial     // is trial a proper factor of n?
    else checkFactors(n, trial - 1) // if not, reduce trial and try again
}


```

* * *

### - An Algebraic Language

*"1.1.1 Manipulating sentences in formal languages ..."*

*"1.1.2 The formal processes of mathematics such as algebraic simplification, formal differentiation and integration ..."*

*"1.1.3 A compiler ... except for input and output ..."*

*"1.1.4 Heuristic programs ..."*

*"1.1.5 ... representing expressions whose number and length may change ..."*


[An Algebraic Language for the Manipulation of Symbolic Expressions](http://www.softwarepreservation.org/projects/LISP/MIT/AIM-001.pdf)


* * *

### - map

```
maplist[x;f]
The function maplist is a mapping of the list x onto a new list f[x]

maplist[x;f] = [null[x] → NIL;
		T → cons[f[x]; maplist[cdr[x];f]]]

```

(p122)

[LISP I Programmer's Manual](http://history.siam.org/sup/Fox_1960_LISP.pdf)




* * *

### - Record Handling



[Record Handling](http://archive.computerhistory.org/resources/text/knuth_don_x4100/PDF_index/k-9-pdf/k-9-u2293-Record-Handling-Hoare.pdf)



* * *

### - Null




[Null References: The Billion Dollar Mistake](https://www.infoq.com/presentations/Null-References-The-Billion-Dollar-Mistake-Tony-Hoare)


* * *

stub

* * *

stub

* * *

### - Algebraic specification

[A Look at Algebraic Specification](http://www.kurims.kyoto-u.ac.jp/~kyodo/kokyuroku/contents/pdf/0454-09.pdf)

None of the early papers on algebraic specification are available on the internet. And in most cases, they are not available at all (practically speaking). So I can't really give credit where credit is due (with primary source). I'm linking to Zilles' summary because he was an important participant in the 70s data type specification movement and his paper is fairly readable.

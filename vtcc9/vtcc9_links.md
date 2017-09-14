# Programming ... in Kotlin



* * *

### - Etymology for "coherence"

http://www.etymonline.com/index.php?term=coherent

* * *

### - Shorten the conceptual gap

*our intellectual powers are rather geared to master static relations and that our powers to visualize processes evolving in time are relatively poorly developed. For that reason we should [...] shorten the conceptual gap between the static program and the dynamic process, to make the correspondence between the program (spread out in text space) and the process (spread out in time) as trivial as possible.*

#### Go To Statement Considered Harmful

https://edisciplinas.usp.br/pluginfile.php/1901807/mod_resource/content/1/p147-salton.pdf


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

https://csdl-images.computer.org/mags/an/2005/03/figures/a30441.gif

*June 21, 1948 - Program runs successfully on first binary, digital, electronic stored-program computer (in which data and instructions are stored in same memory)*

* * *

### - First successful "stored" program (Manchester SSEM)

http://images.computerhistory.org/revonline/images/500004282-03-01.jpg?w=600

*Highest proper factor; uses subtraction instead of division*

* * *

### - Highest proper factor (attempt #1)

#### But is it correct?

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

- No annotations of type
- *val* is unchangeable (conceptually just function application)
- *var* is destructive assignment; value is destroyed elsewhere
- 'remainder' is not remainder at first; Englishy naming not that helpful
- nested *println* modifies state in the environment, not in the program
- nested return is a jump (ie GO TO)
- statement nesting leads to *context gap* that has to be jumped over



* * *

### - Accepted methodology ... find more bugs and make more patches

*The accepted methodology for program construction was [...]: People would write code and make test runs, then find bugs and make patches, then find more bugs and make more patches, and so on until not being able to discover any further errors, yet always living in dread for fear that a new case would turn up on the next day and lead to a new type of failure*

#### Robert W Floyd, In Memoriam by Donald Knuth

http://www-cs-faculty.stanford.edu/~uno/papers/floyd.ps.gz

https://youtu.be/OJsMXu3EPCw?t=29m43s


* * *

### - Function (extensional)

https://saylordotorg.github.io/text_intermediate-algebra/section_05/f0f80432cf5e496a04ecfd8ce9423065.png

* * *

### - Domain, Co-domain, Range

https://upload.wikimedia.org/wikipedia/commons/6/64/Codomain2.SVG

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

*a really high speed device would be very limited in its usefulness unless it can rely on M [ie, Memory], rather than on R [ie, I/O], for all the purposes enumerated in 2.4, (a)–(h) [ie, Calculation]*

http://archive.computerhistory.org/resources/text/Knuth_Don_X4100/PDF_index/k-8-pdf/k-8-u2593-Draft-EDVAC.pdf


*Herman Goldstine & John Von Neumann*

http://blog.hnf.de/wp-content/uploads/2017/01/IAS-Computer.jpg

*Max Newman*

http://www.rutherfordjournal.org/images/cope2.jpg


* * *

### - Guerilla Open Access Manifesto

https://archive.org/stream/GuerillaOpenAccessManifesto/Goamjuly2008_djvu.txt

* * *

### - Coding is not a static process of translation

*Thus the relation of the coded instruction sequence to the mathematically conceived procedure of (numerical) solution is not a statical one, that of a translation, but highly dynamical ...* (p.2)

*Our problem is then to find simple, step-by-step methods, by which these difficulties can be overcome. Since coding is not a static process of translation, but rather the technique of providing a dynamic background to control the automatic evolution of a meaning, it has to be viewed as a logical problem and one that represents a new branch of formal logics.* (p.2)

*We now proceed to analyze the procedings by which one can build up the appropriate coded sequence for a given problem — or rather for a given numerical method to solve that problem. As was pointed out in 7.1, this is not a mere question of translation (of a mathematical text into a code), but rather a question of providing a control scheme for a highly dynamical process, all parts of which may undergo repeated and relevant changes in the course of this process.* (p.4)

*We therefore propose to begin the planning of a coded sequence by laying out a schematic of the course of C through that sequence, i.e. through the required region of the selectron memory. This schematic is the __flow diagram__ of C* (p.4)

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

- inspired by Hing Leung "Program Correctness" project http://bit.ly/2xrshIW
- goal makes sense only for particular input set (non-Prime numbers)
- termination condition moved to the outside
- structured loops (ie *while*) become conditional jumps
- loops are book-ended by two gotos
- loop check is inverted from original structured version



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

### - An entirely different kind of power ... the ability to do recursions

*An entirely different kind of power arises from the flexibility of the hierarchy -- the ability to do recursions. An instruction may be used in its own defining subroutine, or in any of the subroutines connected with its definition, in any way whatsoever provided that the routine does not modify itself and that the entire process terminates. (p34)

http://bitsavers.informatik.uni-stuttgart.de/pdf/rand/ipl/P-954_Programming_The_Logic_Theory_Machine_Jan57.pdf


* * *

### - A program ...

*In IPL a program ... is a system of subroutines ... organized in a roughly hierarchical fashion.* (p16)

#### Programming the Logic Theory Machine

http://bitsavers.informatik.uni-stuttgart.de/pdf/rand/ipl/P-954_Programming_The_Logic_Theory_Machine_Jan57.pdf

*A FORTRAN source program consists of a sequence of FORTRAN statements* (p7)

#### The Automatic Coding System for the IBM 704 EDPM

https://www.fortran.com/FortranForTheIBM704.pdf


Mark Priestly compares the history of the two approaches in

##### AI and the Origins of the Functional Programming Language Style

http://www.markpriestley.net/pdfs/AIandFunctionalStyle.pdf




* * *

### - Symbolic computation

*whenever numbers meaning __operations__ and not __quantities__ ... It might have been arranged that all
... numbers meaning __operations__ should have appeared on some separate portion of the engine from that which presents numerical __quantities__* (p16)

*The operating mechanism can even be thrown into action independently of any object to operate upon .... Again, it might act upon other things besides __number__* (p17)


##### Sketch of the Analytical Engine
https://history-computer.com/Library/Sketch%20of%20Engine.pdf

Ada Lovelace

http://blogs.bodleian.ox.ac.uk/wp-content/uploads/sites/163/2015/10/AdaByron-1850-1000x1200-e1444805848856.jpg


Lovelace arguably anticipates Gödel's use of numbers to represent logical propositions

*"The basic signs of the system P are now ordered in one-to-one correspondence with natural numbers"* (p45)

##### On Formally Undecidable Propositions of Principia Mathematica and Related Systems

http://jacqkrol.x10.mx/assets/articles/godel-1931.pdf

Original German: http://www.w-k-essler.de/pdfs/goedel.pdf


Note also that Gödel introduces a notion of computability using recursive functions.


* * *

### - Conditional expression

*The object of this note is to advocate that the IAL language be extended to include two additional additional notations: __conditional expressions__ and __recursive definitions__*

```
( p₁ → e₁, ..., pₓ → eₓ )
```

```
gcd(m,n) = (m > n → gcd(n, m),
	   rem(n,m) = 0 → m,
	   T → gcd(rem(n,m), m))
```


You have to pay $15 to read this one-page letter

http://dl.acm.org/citation.cfm?id=1773349&dl=ACM&coll=DL&CFID=809180756&CFTOKEN=13625595

John McCarthy

https://c1.staticflickr.com/7/6218/6277562781_a84386cee5_b.jpg

* * *

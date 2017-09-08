# Programming ... in Kotlin

* * *

### - Etymology for "coherence"

http://www.etymonline.com/index.php?term=coherent

* * *

### - Go To Statement Considered Harmful

https://edisciplinas.usp.br/pluginfile.php/1901807/mod_resource/content/1/p147-salton.pdf

*Originally titled "A Case Against the Go To Statement"*

https://www.cs.utexas.edu/users/EWD/ewd02xx/EWD215.PDF

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

*Highest proper factor using subtraction instead of division*

* * *

### - Highest proper factor (#1)
```
fun main(args: Array<String>) {
    val input = 12
    var remainder = input
    var factor = input - 1

    while (factor > 1) {
	while (remainder >= 0) {
	    if (remainder == 0) {
		println(factor) // Setting state of environment
		return          // GOTO
	    }
	    remainder = remainder - factor
	}
	remainder = input
	factor--
    }
}
```

- No annotations of type
- val vs var
- destructive assignment
- going to destroy it elsewhere
- 'remainder' is not remainder at first; naming misleads
- nested println modifies state in the environment, not in the program
- nested return is a jump (ie GO TO)
- command nesting leads to dependency gap that will be jumped over

#### But is this correct?

* * *

.PHONY: clean test
.SUFFIXES: .java .class
.java.class:
	javac -cp .:lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar $<

test: MarkdownParse.class MarkdownParseTest.class
	java -cp .:lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar org.junit.runner.JUnitCore MarkdownParseTest

clean:
	rm -f *.class

##Old Compile Targets:
#MarkdownParse.class: MarkdownParse.java
#	javac MarkdownParse.java
#
#MarkdownParseTest.class: MarkdownParseTest.java
#	javac -cp .:lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar MarkdownParseTest.java
#
##Compile and execute commands for powershell:
#	javac -cp ".;lib\junit-4.13.2.jar;lib\hamcrest-core-1.3.jar" MarkdownParseTest.java
#	java -cp ".;lib/junit-4.13.2.jar;lib/hamcrest-core-1.3.jar" org.junit.runner.JUnitCore MarkdownParseTest
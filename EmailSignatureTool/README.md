# CHAP Signature Tool
In this directory you can find CHAP's tool to generate email signatures.
## How It Works
For those wondering how it works, it uses a bash script in order to generate your personal signature based off a sequence of inputs you give the script when running it. The formatting of the html is a little obscure seeing as email providers don't have much support when it comes to html email signatures. Nevertheless the html it just a bunch of nested tables and respective table elements. 
## How To Use It
=======
1. Clone The Respository\
<code>git clone git@github.com:chap-organization/chap-tools.git</code>

2. Make The File Executable\
<code>cd EmailSignatureTool/</code>\
<code>chmod u+x generateCHAPEmailSignature.sh</code>\

3. Run The Script\
<code>./generateCHAPEmailSignature.sh</code>\
	Once you run the script fill in all the options, unless specified. For now, the personal website is optional, so you may leave this blank if you wish. Once complete, <b>copy the output</b>.

4. Create An HTML File\
<code>touch index.html</code>\

5. Edit The File\
<code>nano index.html</code>\

	Paste the output of the script in this file. You might have to wrap the output like such: \
&lt;html>\
&lt;body>\
...
&lt;/body>\
&lt;/html>\

6. Open The File in a Browser
7. Select and Copy The Output (Command-A, Command-C/Ctrl-A, Ctrl-C)
8. Create a Signature and Paste the Output in Your Email Provider# CHAP Signature Tool

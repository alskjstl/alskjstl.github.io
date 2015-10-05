---
layout: page
title:	Learn Python
category: blog
description: 
---
# Preface

# todo
to read
http://learnpythonthehardway.org/book/ex25.html

# python3 vs python2
http://www.dantangfan.com/diff-py2-py3/
官方提供：
https://pythonhosted.org/six/

Please use Python3
1. http://asmeurer.github.io/python3-presentation/slides.html#1

# todo python3
begin:
http://docspy3zh.readthedocs.org/en/latest/tutorial/index.html
deep: 
http://woodpecker.org.cn/diveintopython3/

# Help

	$ pydoc <name>
	$ pydoc pydoc
	$ pydoc open
	$ pydoc file

# Exec

	cat a.py | python
	cat a.py | python - arg1

Note: raw_input 将不会正常工作，We better use :

	python <(cat p.py)
	python p.py
	

# String
double quotes and single quotes is same

	print "a\nb" # The character here "\n" is new line
	print 'a\nb'

## string func

	len('abc')

## Common Function

	len(str)
	'ab cd'.split(' ') # ['ab', 'cd']
	sorted('a zx') # [' ', 'a', 'x', 'z']
	sorted('a zx').pop(0); # first
	sorted('a zx').pop(-1); # last

## Concat String

	>>> print 'a'+'b'+'c'	# with no space
	abc	# "abc\n"
	>>> print 'a' 'b' 	'c'   # with no space
	>>> print 'a''b''c'   # with no space
	abc # "abc\n"
	>>> print var1 var2   # syntax error
	>>> print '-'*6
	------
	>>> print '-' * 6
	------
	
long delimiter `"""` and `'''`(same): `\n` is still transfered by python

	print """
	a\nbc
	"""
	print """ab\nc"""
	print '''ab\nc'''

### Escape Sequences

	\n	ASCII linefeed (LF)
	\N{name}	Character named name in the Unicode database (Unicode only)
	\r ASCII	Carriage Return (CR)
	\uxxxx	Character with 16-bit hex value xxxx (Unicode only)
	\Uxxxxxxxx	Character with 32-bit hex value xxxxxxxx (Unicode only)
	\v	ASCII vertical tab (VT)
	\ooo	Character with octal value ooo
	\xhh	Character with hex value hh

### print

	>>> print 'a', 'b', 'c' # with space and new line
	a b c	# "a b c\n"			
	>>> print 'a', 'b', 'c',# with space only
	a b c	# "a b c "

with no space and new line:

	>> sys.stdout.write('string')
	string

## Format String

	>>> format='%s'
	>>> print format % 'part1' 'part2'
	part1part2

	>>> print 'This is (%r) (%s)' % ("Hilojack\"", "Blog")
	This is ('Hilojack"') (Blog)
	>>> print '''This is (%r) (%s)''' % ("Hilojack\"", "Blog")
	This is ('Hilojack"') (Blog)

> %r displays the "raw" data

# IO

## argv

	from sys import argv # import module "sys" and objects: argv
	script, arg1, arg2 = argv

## input

	str = raw_input()
	str = raw_input("Input some string:")

## Directory

	from os.path import exists
	exists(file)

## File

	print open('a.php').read(); //cat a.php

### Open File

	fp = open(filename[, mode])
	mode:
		'r' 'w' 'a'
		append a '+' to the mode to allow simultaneous reading and writing
			'r+' read and write
			'w+' empty old content and write
			'a+' read and append
		append a 'U' to the mode open a file for input with universal new line support('\r', '\n', '\r\n')
			 'U' cannot be combined with 'w' or '+' mode.
	fp.close()

### read and write
> pydoc file

	fp.read()	Return file content.
	fp.readline()	Return just one line of text file.
	fp.write(string)	Writes string to file(start at file position)
	fp.writeline(string)	Writes string to file(start at file position)
	fp.truncate(...)
		truncate([size]) -> None.  Truncate the file to at most size bytes.
		Size defaults to the current file position, as returned by tell().

Example:

	fp = open('a.txt')
	print fp.read()
	fp.close();

### file position
`pydoc file`

	tell(...)
		tell() -> current file position, an integer (may be a long integer).
	seek(...)
		seek(offset[, whence]) -> None.  Move to new file position.
		Optional argument whence defaults to:
			0 (offset from start of file, offset should be >= 0); 
			1 (move relative to current position, positive or negative),
			2 (move relative to end of file, usually negative, although many platforms allow seeking beyond the end of a file).  
			If the file is opened in text mode, only offsets returned by tell() are legal.  Use of other offsets causes undefined behavior.

# Number

## math

	int('1')
	float('1')
	round(1.7333)

# function

	def func(s1,s2):
		local_var=4
		print global_var
		retrun s1,s2

	s1,s2 = func("-%s-" % 'Hello','-%s-' % 'Hilo' 'jack')
	print s1,s2

output:

	-Hello- -Hilojack-

## multi args

	def func(*args):
		s1,s2 = args

# Condition & Loop 

	x=10;
	if 1<=x<=5:
		print x
	elif x==6: print x*x
	else: print x*x*x

# logic

	>>> 1 or 2 and 3
	1
	>>> (1 or 2) and 3
	3
	>>> False or 0 or '' or 3
	3

# list

	list = [1,2]

For more details, refer to `pydoc list`

## Common list Function


	index(value, [start, [stop]])
	insert(index, object)
	remove(value) -- remove first occurrence of value.
	count(value) -> integer -- return number of occurrences of value
	reverse() -> reverse *IN PLACE*
	sort(cmp=None, key=None, reverse=False) -- stable sort *IN PLACE*;

range:

	>>> print range(4)
	[0, 1, 2, 3]
	>>> print range(2,4)
	[2, 3]

pop,append

	>>> list = [1,2]
	>>> list.append(3)
	>>> list.pop(-1) # same as list.pop
	3
	>>> list.pop(0)
	1

## unpack list

	>>> print argv
	[1, 2]
	>>> a,b = [1, 2]

	>>> print aa()
	(1, 2)
	>>> a,b = aa()

## any

	if needle.endswith('ly') or needle.endswith('ed') or
		needle.endswith('ing') or needle.endswith('ers'):
		print('Is valid')
	else:
		print('Invalid')

改成:

	if any([needle.endswith(e) for e in ('ly', 'ed', 'ing', 'ers')]):
		print('Is valid')
	else:
		print('Invalid')

# import
wirte a `hilo.py`:

	def add(a, b):
		return a+b

Then under interact python envirment:
	
	import hilo
	print hilo.add(1,2)
	add = hilo.add
	print add(1,2)

	help(hilo) # What did you see?
	help(hilo.add)
	help(add)

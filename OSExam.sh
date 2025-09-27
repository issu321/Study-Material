Type-1

✅ 1. Access Info (date, history, who, etc.)

date
whoami
who
cal
history | tail -5
man ls | head -10


---

✅ 2. Display file contents

cat filename.txt
more filename.txt
head -3 filename.txt
tail -3 filename.txt
grep "the" filename.txt
cmp file1.txt file2.txt
wc filename.txt


---

✅ 3. File & Directory Management

mkdir mydir
cd mydir
echo "Hello Ussu" > file1.txt
cp file1.txt file2.txt
mv file2.txt renamed.txt
ls -l
chmod 777 renamed.txt
rm file1.txt
cd ..
rmdir mydir
pwd


---

✅ 4. Process utilities

ps
echo $$
echo $PPID
tty
time sleep 2
exit


---

✅ 5. List files with all permissions

ls -l
# Now filter manually, OR use:
for f in *; do [ -x "$f" -a -r "$f" -a -w "$f" ] && echo "$f"; done


---

✅ 6. Compare and delete if same

cmp -s file1.txt file2.txt && rm file2.txt && echo "Deleted file2.txt"


---

✅ 7. Count chars, words, lines

wc filename.txt


---

✅ 8. List files in directory

ls /path/to/your/directory


---

✅ 9. Display logged-in users

who


---

✅ 10. Merge 3 files into 1

cat file1.txt file2.txt file3.txt > merged.txt
exec 3<merged.txt


---

✅ 11. Leap year checker

year=2024
if (( (year%4==0 && year%100!=0) || (year%400==0) )); then echo "Leap Year"; else echo "Not Leap Year"; fi


---

✅ 12. Create Zombie

(sleep 30) &
ps -elf | grep defunct


---

✅ 13. Factorial

n=5; f=1; while [ $n -gt 1 ]; do f=$((f*n)); n=$((n-1)); done; echo "Factorial=$f"


---

✅ 14. Palindrome check

str="madam"; [ "$str" == "$(echo $str | rev)" ] && echo "Palindrome" || echo "Not Palindrome"


---

✅ 15. Menu-style (manual steps)

echo "1. Add Emp"
echo "2. View Salary"
echo "3. Exit"
read ch
case $ch in
  1) read -p "Enter name: " name; echo "$name added";;
  2) echo "Salary = ₹10000";;
  3) echo "Bye!";;
  *) echo "Wrong choice";;
esac


---
Type-2
---

1. Access system info: date, history, man, who, whoami, finger, cal

#!/bin/bash
echo "Today's Date:"; date
echo "Who am I?"; whoami
echo "Who is logged in?"; who
echo "Calendar:"; cal
echo "Command history:"; history | tail -5
echo "Manual for 'ls' command:"; man ls | head -10


---

2. Display contents using cat, vi, more, head, tail, grep, cmp, wc

#!/bin/bash
echo "Enter filename:"
read file
echo "Full content:"; cat $file
echo "First 3 lines:"; head -3 $file
echo "Last 3 lines:"; tail -3 $file
echo "Words with 'the':"; grep "the" $file
echo "File info:"; wc $file


---

3. Manage files & directories

#!/bin/bash
mkdir testdir
cd testdir
echo "Hello Ussu" > file1.txt
cp file1.txt file2.txt
mv file2.txt renamed.txt
ls -l
chmod 777 renamed.txt
rm file1.txt
cd ..
rmdir testdir
pwd


---

4. Process utilities

#!/bin/bash
echo "Process List:"; ps
echo "My PID: $$"
echo "Parent PID: $PPID"
echo "Terminal: $(tty)"
echo "Sleeping for 2 sec..."; time sleep 2
echo "Exit now"; exit


---

5. Show files with read, write, execute

#!/bin/bash
echo "Files with full permissions:"
for f in *; do
  [ -x "$f" -a -r "$f" -a -w "$f" ] && echo "$f"
done


---

6. Compare and delete

#!/bin/bash
echo "Enter file1:"
read f1
echo "Enter file2:"
read f2
cmp -s $f1 $f2 && rm $f2 && echo "Files same. $f2 deleted" || echo "Files are different"


---

7. Count characters, words, lines

#!/bin/bash
echo "Enter filename:"
read f
wc $f


---

8. List files in a directory

#!/bin/bash
echo "Enter directory:"
read dir
ls $dir


---

9. Show users logged in

#!/bin/bash
who


---

10. Merge 3 files into 1

#!/bin/bash
cat file1.txt file2.txt file3.txt > merged.txt
exec 3<merged.txt
echo "Merged file created and FD 3 opened"


---

11. Leap year checker

#!/bin/bash
echo "Enter year:"
read y
if (( (y%4==0 && y%100!=0) || (y%400==0) ))
then echo "$y is a Leap Year"
else echo "$y is Not a Leap Year"
fi


---

12. Create Zombie Process

#!/bin/bash
echo "Creating Zombie"
( sleep 5 ) &
child=$!
echo "Child PID: $child"
wait $child


---

13. Factorial

#!/bin/bash
echo "Enter a number:"
read n
fact=1
while [ $n -gt 1 ]; do
  fact=$((fact * n))
  n=$((n - 1))
done
echo "Factorial = $fact"


---

14. Palindrome string

#!/bin/bash
echo "Enter string:"
read str
rev=$(echo $str | rev)
[ "$str" == "$rev" ] && echo "Palindrome" || echo "Not Palindrome"


---

15. Menu-based Payroll System

#!/bin/bash
echo "Payroll Menu"
echo "1. Add Employee"
echo "2. View Salary"
echo "3. Exit"
read -p "Choose option: " ch
case $ch in
  1) echo "Enter name:"; read name; echo "$name added";;
  2) echo "Salary is ₹10,000";;
  3) echo "Bye!"; exit;;
  *) echo "Invalid choice";;
esac


---




# realpath appends the given file or directory name to the current working directory
# it does not check if the path exists or not
x=$(realpath $0) # $0 = current file name

if [[ -e $x ]] # -e to check if a path entry exists or not
then
    echo "Real path of $0 is $x"
else 
    echo "$x does not exist"
fi

echo "==========================================="

y=$(basename $x) # basename returns the last path segment
z=$(dirname $x)  # dirname returns the directory name i.e. path excluding the last part
echo "base name of  $x = $y" 
echo "directory name of $x = $z"

echo "==========================================="

a="unknown.txt" 

# -f checks if the input path is file,  if the input is not a file path or does not exist then it fails
# use !-f to check not file

if [[ -f $a ]] 
then 
    echo "$a is a file"
else 
    echo "$a is not a file"
fi

echo "==========================================="

b="/home/acer/unknown" # $(pwd)

# -d checks if the input path is directory,  if the input is not a directory path or does not exist then it fails
# use !-d to check not directory

if [[ -d $b ]] 
then 
    echo "$b is a directory"
else 
    echo "$b is not a directory"
fi

echo "==========================================="
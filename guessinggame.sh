#check user's number 
processGuess(){
  answer=$(ls | wc -l)
  if [ $1 -gt $answer ]
  then
    echo "Guess is too high. Please try again"
    return 0
  else
    if [ $1 -lt $answer ]
    then
      echo "Guess is too low. Please try again"
      return 0
    else
      if [ $1 == $answer ]
      then
        echo "Congratulations! Exact matching!"
        return 1
      else
        echo "Wrong format! Please try again"
        return 0
      fi
    fi
  fi
}

retval=0
echo "Try to guess how many files we have in the current directory!"
while [ $retval == 0 ]
do
  read guess
  processGuess $guess
  retval=$?
done
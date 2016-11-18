select alpha in a b c d 1 2 3 4 none
do 
case $alpha in
    a|b|c|d)
echo "This is alphabet" ;;
    1|2|3|4)
echo "This is number" ;;
none)
break
;;
*)
echo "enter valid input"
;;
esac
done

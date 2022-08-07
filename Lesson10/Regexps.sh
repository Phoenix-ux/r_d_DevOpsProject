#Regular expression for ISBN check

echo "ISBN 5-02-013850-9" | awk '/^ISBN\s([7-9 -]){4}*([-0-9Xx ]{10,13}$)/{print $0}'



#Regular expression for Credit Card check

echo "4149-3017-4287-0080 12/24" | awk '/^([0-9]{4}[- ]?){3}[0-9]{4} [0-1][0-9]\/[0-9][0-9]$/{print $0}'
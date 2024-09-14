# Cow-spoken fortunes every time you open a terminal
function cowsayfortune {
    NUMOFCOWS=`cowsay -l | tail -n +2 | wc -w`
    WHICHCOW=$((RANDOM%$NUMOFCOWS+1)) # add selected few also
    THISCOW=`cowsay -l | tail -n +2 | sed -e 's/\ /\'$'\n/g' | sed $WHICHCOW'q;d'`

    #echo "Selected cow: ${THISCOW}, from ${WHICHCOW}"
    fortune | cowsay -f $THISCOW -W 100
}

function joke {
    cowsay -f cowfee $(curl -s -H "Accept: text/plain" https://icanhazdadjoke.com/)
}

cowsayfortune

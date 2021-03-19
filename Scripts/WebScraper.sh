#!/bin/bash
# Resource: https://www.joyofdata.de/blog/using-linux-shell-web-scraping/

#echo "https://www.blueletterbible.org/lang/lexicon/lexicon.cfm?page=1&strongs=H5375#lexResults" |
#	wget -O- -i- > ScriptureOut_H5375_1.txt
#echo "https://www.blueletterbible.org/lang/lexicon/lexicon.cfm?page=2&strongs=H5375#lexResults" |
#	wget -O- -i- > ScriptureOut_H5375_2.txt
#echo "https://www.blueletterbible.org/lang/lexicon/lexicon.cfm?page=3&strongs=H5375#lexResults" |
#	wget -O- -i- > ScriptureOut_H5375_3.txt
#echo "https://www.blueletterbible.org/lang/lexicon/lexicon.cfm?page=4&strongs=H5375#lexResults" |
#	wget -O- -i- > ScriptureOut_H5375_4.txt
#echo "https://www.blueletterbible.org/lang/lexicon/lexicon.cfm?page=5&strongs=H5375#lexResults" |
#	wget -O- -i- > ScriptureOut_H5375_5.txt
#echo "https://www.blueletterbible.org/lang/lexicon/lexicon.cfm?page=6&strongs=H5375#lexResults" |
#	wget -O- -i- > ScriptureOut_H5375_6.txt
#echo "https://www.blueletterbible.org/lang/lexicon/lexicon.cfm?page=7&strongs=H5375#lexResults" |
#	wget -O- -i- > ScriptureOut_H5375_7.txt
#echo "https://www.blueletterbible.org/lang/lexicon/lexicon.cfm?page=8&strongs=H5375#lexResults" |
#	wget -O- -i- > ScriptureOut_H5375_8.txt
#echo "https://www.blueletterbible.org/lang/lexicon/lexicon.cfm?page=9&strongs=H5375#lexResults" |
#	wget -O- -i- > ScriptureOut_H5375_9.txt
#echo "https://www.blueletterbible.org/lang/lexicon/lexicon.cfm?page=10&strongs=H5375#lexResults" |
#	wget -O- -i- > ScriptureOut_H5375_10.txt
#echo "https://www.blueletterbible.org/lang/lexicon/lexicon.cfm?page=11&strongs=H5375#lexResults" |
#	wget -O- -i- > ScriptureOut_H5375_11.txt
#echo "https://www.blueletterbible.org/lang/lexicon/lexicon.cfm?page=12&strongs=H5375#lexResults" |
#	wget -O- -i- > ScriptureOut_H5375_12.txt
#echo "https://www.blueletterbible.org/lang/lexicon/lexicon.cfm?page=13&strongs=H5375#lexResults" |
#	wget -O- -i- > ScriptureOut_H5375_13.txt

for i in {1..13}; do
	echo "https://www.blueletterbible.org/lang/lexicon/lexicon.cfm?page=$i&strongs=H5375#lexResults" |
		wget -O- -i- > ScriptureOut_H5375_$i.txt
done
#for i in {1..13}; do 
#	cat ScriptureOut_H5375_$i.txt |
# 	grep 'class="copyBox hide-for-tablet" data-bible-id=' |
# 	lynx -stdin -dump -nolist -width=1024 |
# 	sed 's/Unchecked Copy Box //g' |
# 	sed '/^$/d' | sed 's/^   //g' > ScriptureOut_H5375_$i.txt
#
# echo "... task $i of 13 done"
#done

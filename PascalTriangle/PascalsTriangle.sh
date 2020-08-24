echo "Insert the row:" read n for((i=0;i<$n;i++)) 
do      
eval"a$i=($(w=1;v=1
        for((j=0;j<$n-$i;j++))
        do 
            [ $i -eq 0 -o $j -eq 0 ]&&{ v=1 && w=1; }||v=$((w+a$((i-1))[$((j))]))
            echo -n "$v "
            w=$v
        done))"
     eval echo "$(for((k=0;k<=$i;k++)) 
        do 
            eval "echo -n \"\$((a\$((i-k))[k])) \"" 
        done)" 
    done
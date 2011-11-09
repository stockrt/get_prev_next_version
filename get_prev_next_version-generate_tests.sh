#!/usr/bin/env bash
#
# get_prev_next_version.sh generate tests script.
#
# Author: Rogério Carvalho Schneider <stockrt@gmail.com>


#############
## DEFINES ##
#############

commands="prev next"
field_sizes="1 2 3"
entries="0 1 9 10 99 100 999"
i=0


##########
## FUNC ##
##########

print_header ()
{
    command="$1"
    field_size="$2"

    echo
    if [[ "$command" == "prev" ]]; then
        echo "
################
## Backward ${field_size} ##
################"
    else
        echo "
###############
## Forward ${field_size} ##
###############"
    fi
}


##########
## MAIN ##
##########

for command in $commands; do
    for field_size in $field_sizes; do
        print_header "$command" "$field_size"
        for x in $entries; do
            let i+=1
            echo "
it_goes_${command}_${field_size}_comb_${x} () {
    ret=\$(./get_prev_next_version.sh ${field_size} ${command} ${x})
    test \"\$ret\" = \"TODO\"
}"
        done
    done
done

for command in $commands; do
    for field_size in $field_sizes; do
        print_header "$command" "$field_size"
        for x in $entries; do
            for y in $entries; do
                let i+=1
                echo "
it_goes_${command}_${field_size}_comb_${x}_${y} () {
    ret=\$(./get_prev_next_version.sh ${field_size} ${command} ${x}.${y})
    test \"\$ret\" = \"TODO\"
}"
            done
        done
    done
done

for command in $commands; do
    for field_size in $field_sizes; do
        print_header "$command" "$field_size"
        for x in $entries; do
            for y in $entries; do
                for z in $entries; do
                    let i+=1
                    echo "
it_goes_${command}_${field_size}_comb_${x}_${y}_${z} () {
    ret=\$(./get_prev_next_version.sh ${field_size} ${command} ${x}.${y}.${z})
    test \"\$ret\" = \"TODO\"
}"
                done
            done
        done
    done
done

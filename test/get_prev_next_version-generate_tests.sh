#!/usr/bin/env bash

# Copyright (C) 2011 Rogério Carvalho Schneider <stockrt@gmail.com>
#
# This file is part of get_prev_next_version.
#
# get_prev_next_version is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# get_prev_next_version is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with get_prev_next_version.  If not, see <http://www.gnu.org/licenses/>.
#
#
# get_prev_next_version-generate_tests.sh
#
# Created:  Nov 10, 2011
# Author:   Rogério Carvalho Schneider <stockrt@gmail.com>


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

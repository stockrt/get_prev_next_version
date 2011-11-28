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
# count-test.sh
#
# Created:  Nov 18, 2011
# Author:   Rogério Carvalho Schneider <stockrt@gmail.com>


#############
## DEFINES ##
#############

tool="../get_prev_next_version.sh"


###########
## TESTS ##
###########


###########
## COUNT ##
###########

it_counts_down_10000 () {
    ret="10000"
    count=0
    count_should_be=10000

    while [[ "$ret" != "master" ]]
    do
        ret="$($tool 5 prev $ret)"
        let count+=1
        if [[ $count -gt $count_should_be ]]
        then
            break
        fi
    done

    test "$count" = "$count_should_be"
}

it_counts_up_10000 () {
    ret="0"
    count=0
    count_should_be=10000

    while [[ "$ret" != "10000" ]]
    do
        ret="$($tool 5 next $ret)"
        let count+=1
        if [[ $count -gt $count_should_be ]]
        then
            break
        fi
    done

    test "$count" = "$count_should_be"
}

it_counts_down1_1_0 () {
    ret="1.0"
    count=0
    count_should_be=10

    while [[ "$ret" != "master" ]]
    do
        ret="$($tool 1 prev $ret)"
        let count+=1
        if [[ $count -gt $count_should_be ]]
        then
            break
        fi
    done

    test "$count" = "$count_should_be"
}

it_counts_down1_1_0_0 () {
    ret="1.0.0"
    count=0
    count_should_be=100

    while [[ "$ret" != "master" ]]
    do
        ret="$($tool 1 prev $ret)"
        let count+=1
        if [[ $count -gt $count_should_be ]]
        then
            break
        fi
    done

    test "$count" = "$count_should_be"
}

it_counts_down1_1_0_0_0 () {
    ret="1.0.0.0"
    count=0
    count_should_be=1000

    while [[ "$ret" != "master" ]]
    do
        ret="$($tool 1 prev $ret)"
        let count+=1
        if [[ $count -gt $count_should_be ]]
        then
            break
        fi
    done

    test "$count" = "$count_should_be"
}

it_counts_down2_1_0 () {
    ret="1.0"
    count=0
    count_should_be=100

    while [[ "$ret" != "master" ]]
    do
        ret="$($tool 2 prev $ret)"
        let count+=1
        if [[ $count -gt $count_should_be ]]
        then
            break
        fi
    done

    test "$count" = "$count_should_be"
}

it_counts_down2_1_0_0 () {
    ret="1.0.0"
    count=0
    count_should_be=10000

    while [[ "$ret" != "master" ]]
    do
        ret="$($tool 2 prev $ret)"
        let count+=1
        if [[ $count -gt $count_should_be ]]
        then
            break
        fi
    done

    test "$count" = "$count_should_be"
}

#it_counts_down2_1_0_0_0 () {
#    ret="1.0.0.0"
#    count=0
#    count_should_be=1000000
#
#    while [[ "$ret" != "master" ]]
#    do
#        ret="$($tool 2 prev $ret)"
#        let count+=1
#        if [[ $count -gt $count_should_be ]]
#        then
#            break
#        fi
#    done
#
#    test "$count" = "$count_should_be"
#}

it_counts_down3_1_0 () {
    ret="1.0"
    count=0
    count_should_be=1000

    while [[ "$ret" != "master" ]]
    do
        ret="$($tool 3 prev $ret)"
        let count+=1
        if [[ $count -gt $count_should_be ]]
        then
            break
        fi
    done

    test "$count" = "$count_should_be"
}

#it_counts_down3_1_0_0 () {
#    ret="1.0.0"
#    count=0
#    count_should_be=1000000
#
#    while [[ "$ret" != "master" ]]
#    do
#        ret="$($tool 3 prev $ret)"
#        let count+=1
#        if [[ $count -gt $count_should_be ]]
#        then
#            break
#        fi
#    done
#
#    test "$count" = "$count_should_be"
#}
#
#it_counts_down3_1_0_0_0 () {
#    ret="1.0.0.0"
#    count=0
#    count_should_be=1000000000
#
#    while [[ "$ret" != "master" ]]
#    do
#        ret="$($tool 3 prev $ret)"
#        let count+=1
#        if [[ $count -gt $count_should_be ]]
#        then
#            break
#        fi
#    done
#
#    test "$count" = "$count_should_be"
#}

it_counts_up1_1_0 () {
    ret="master"
    count=0
    count_should_be=10

    while [[ "$ret" != "1.0" ]]
    do
        ret="$($tool 1 next $ret)"
        let count+=1
        if [[ $count -gt $count_should_be ]]
        then
            break
        fi
    done

    test "$count" = "$count_should_be"
}

it_counts_up1_1_0_0 () {
    ret="master"
    count=0
    count_should_be=100

    while [[ "$ret" != "1.0.0" ]]
    do
        ret="$($tool 1 next $ret)"
        let count+=1
        if [[ $count -gt $count_should_be ]]
        then
            break
        fi
    done

    test "$count" = "$count_should_be"
}

it_counts_up1_1_0_0_0 () {
    ret="master"
    count=0
    count_should_be=1000

    while [[ "$ret" != "1.0.0.0" ]]
    do
        ret="$($tool 1 next $ret)"
        let count+=1
        if [[ $count -gt $count_should_be ]]
        then
            break
        fi
    done

    test "$count" = "$count_should_be"
}

it_counts_up2_1_0 () {
    ret="master"
    count=0
    count_should_be=100

    while [[ "$ret" != "1.0" ]]
    do
        ret="$($tool 2 next $ret)"
        let count+=1
        if [[ $count -gt $count_should_be ]]
        then
            break
        fi
    done

    test "$count" = "$count_should_be"
}

it_counts_up2_1_0_0 () {
    ret="master"
    count=0
    count_should_be=10000

    while [[ "$ret" != "1.0.0" ]]
    do
        ret="$($tool 2 next $ret)"
        let count+=1
        if [[ $count -gt $count_should_be ]]
        then
            break
        fi
    done

    test "$count" = "$count_should_be"
}

#it_counts_up2_1_0_0_0 () {
#    ret="master"
#    count=0
#    count_should_be=1000000
#
#    while [[ "$ret" != "1.0.0.0" ]]
#    do
#        ret="$($tool 2 next $ret)"
#        let count+=1
#        if [[ $count -gt $count_should_be ]]
#        then
#            break
#        fi
#    done
#
#    test "$count" = "$count_should_be"
#}

it_counts_up3_1_0 () {
    ret="master"
    count=0
    count_should_be=1000

    while [[ "$ret" != "1.0" ]]
    do
        ret="$($tool 3 next $ret)"
        let count+=1
        if [[ $count -gt $count_should_be ]]
        then
            break
        fi
    done

    test "$count" = "$count_should_be"
}

#it_counts_up3_1_0_0 () {
#    ret="master"
#    count=0
#    count_should_be=1000000
#
#    while [[ "$ret" != "1.0.0" ]]
#    do
#        ret="$($tool 3 next $ret)"
#        let count+=1
#        if [[ $count -gt $count_should_be ]]
#        then
#            break
#        fi
#    done
#
#    test "$count" = "$count_should_be"
#}
#
#it_counts_up3_1_0_0_0 () {
#    ret="master"
#    count=0
#    count_should_be=1000000000
#
#    while [[ "$ret" != "1.0.0.0" ]]
#    do
#        ret="$($tool 3 next $ret)"
#        let count+=1
#        if [[ $count -gt $count_should_be ]]
#        then
#            break
#        fi
#    done
#
#    test "$count" = "$count_should_be"
#}

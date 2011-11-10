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
# combinatory-test.sh
#
# Created:  Nov 10, 2011
# Author:   Rogério Carvalho Schneider <stockrt@gmail.com>


#############
## DEFINES ##
#############

err_field_size="ERR: Verify field size and version number coherency."
usage_message="Usage: get_prev_next_version.sh 2 prev 1.1.1
Usage: get_prev_next_version.sh 2 next 1.1.1"


###########
## TESTS ##
###########

################
## Backward 1 ##
################

it_goes_prev_1_comb_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 0)
    test "$ret" = "master"
}

it_goes_prev_1_comb_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 1)
    test "$ret" = "master"
}

it_goes_prev_1_comb_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 9)
    test "$ret" = "8"
}

it_goes_prev_1_comb_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 999)
    test "$ret" = "$err_field_size"
}


################
## Backward 2 ##
################

it_goes_prev_2_comb_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 0)
    test "$ret" = "master"
}

it_goes_prev_2_comb_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 1)
    test "$ret" = "master"
}

it_goes_prev_2_comb_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 9)
    test "$ret" = "8"
}

it_goes_prev_2_comb_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 10)
    test "$ret" = "9"
}

it_goes_prev_2_comb_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 99)
    test "$ret" = "98"
}

it_goes_prev_2_comb_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 999)
    test "$ret" = "$err_field_size"
}


################
## Backward 3 ##
################

it_goes_prev_3_comb_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 0)
    test "$ret" = "master"
}

it_goes_prev_3_comb_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 1)
    test "$ret" = "master"
}

it_goes_prev_3_comb_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 9)
    test "$ret" = "8"
}

it_goes_prev_3_comb_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 10)
    test "$ret" = "9"
}

it_goes_prev_3_comb_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 99)
    test "$ret" = "98"
}

it_goes_prev_3_comb_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 100)
    test "$ret" = "99"
}

it_goes_prev_3_comb_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 999)
    test "$ret" = "998"
}


###############
## Forward 1 ##
###############

it_goes_next_1_comb_0 () {
    ret=$(../get_prev_next_version.sh 1 next 0)
    test "$ret" = "1"
}

it_goes_next_1_comb_1 () {
    ret=$(../get_prev_next_version.sh 1 next 1)
    test "$ret" = "2"
}

it_goes_next_1_comb_9 () {
    ret=$(../get_prev_next_version.sh 1 next 9)
    test "$ret" = "9.1"
}

it_goes_next_1_comb_10 () {
    ret=$(../get_prev_next_version.sh 1 next 10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99 () {
    ret=$(../get_prev_next_version.sh 1 next 99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100 () {
    ret=$(../get_prev_next_version.sh 1 next 100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999 () {
    ret=$(../get_prev_next_version.sh 1 next 999)
    test "$ret" = "$err_field_size"
}


###############
## Forward 2 ##
###############

it_goes_next_2_comb_0 () {
    ret=$(../get_prev_next_version.sh 2 next 0)
    test "$ret" = "1"
}

it_goes_next_2_comb_1 () {
    ret=$(../get_prev_next_version.sh 2 next 1)
    test "$ret" = "2"
}

it_goes_next_2_comb_9 () {
    ret=$(../get_prev_next_version.sh 2 next 9)
    test "$ret" = "10"
}

it_goes_next_2_comb_10 () {
    ret=$(../get_prev_next_version.sh 2 next 10)
    test "$ret" = "11"
}

it_goes_next_2_comb_99 () {
    ret=$(../get_prev_next_version.sh 2 next 99)
    test "$ret" = "99.1"
}

it_goes_next_2_comb_100 () {
    ret=$(../get_prev_next_version.sh 2 next 100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999 () {
    ret=$(../get_prev_next_version.sh 2 next 999)
    test "$ret" = "$err_field_size"
}


###############
## Forward 3 ##
###############

it_goes_next_3_comb_0 () {
    ret=$(../get_prev_next_version.sh 3 next 0)
    test "$ret" = "1"
}

it_goes_next_3_comb_1 () {
    ret=$(../get_prev_next_version.sh 3 next 1)
    test "$ret" = "2"
}

it_goes_next_3_comb_9 () {
    ret=$(../get_prev_next_version.sh 3 next 9)
    test "$ret" = "10"
}

it_goes_next_3_comb_10 () {
    ret=$(../get_prev_next_version.sh 3 next 10)
    test "$ret" = "11"
}

it_goes_next_3_comb_99 () {
    ret=$(../get_prev_next_version.sh 3 next 99)
    test "$ret" = "100"
}

it_goes_next_3_comb_100 () {
    ret=$(../get_prev_next_version.sh 3 next 100)
    test "$ret" = "101"
}

it_goes_next_3_comb_999 () {
    ret=$(../get_prev_next_version.sh 3 next 999)
    test "$ret" = "999.1"
}


################
## Backward 1 ##
################

it_goes_prev_1_comb_0_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.0)
    test "$ret" = "master"
}

it_goes_prev_1_comb_0_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.1)
    test "$ret" = "master"
}

it_goes_prev_1_comb_0_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.9)
    test "$ret" = "0.8"
}

it_goes_prev_1_comb_0_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.0)
    test "$ret" = "0.9"
}

it_goes_prev_1_comb_1_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.1)
    test "$ret" = "1.0"
}

it_goes_prev_1_comb_1_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.9)
    test "$ret" = "1.8"
}

it_goes_prev_1_comb_1_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.0)
    test "$ret" = "8.9"
}

it_goes_prev_1_comb_9_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.1)
    test "$ret" = "9.0"
}

it_goes_prev_1_comb_9_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.9)
    test "$ret" = "9.8"
}

it_goes_prev_1_comb_9_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.999)
    test "$ret" = "$err_field_size"
}


################
## Backward 2 ##
################

it_goes_prev_2_comb_0_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.0)
    test "$ret" = "master"
}

it_goes_prev_2_comb_0_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.1)
    test "$ret" = "master"
}

it_goes_prev_2_comb_0_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.9)
    test "$ret" = "0.8"
}

it_goes_prev_2_comb_0_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.10)
    test "$ret" = "0.9"
}

it_goes_prev_2_comb_0_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.99)
    test "$ret" = "0.98"
}

it_goes_prev_2_comb_0_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.0)
    test "$ret" = "0.99"
}

it_goes_prev_2_comb_1_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.1)
    test "$ret" = "1.0"
}

it_goes_prev_2_comb_1_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.9)
    test "$ret" = "1.8"
}

it_goes_prev_2_comb_1_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.10)
    test "$ret" = "1.9"
}

it_goes_prev_2_comb_1_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.99)
    test "$ret" = "1.98"
}

it_goes_prev_2_comb_1_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.0)
    test "$ret" = "8.99"
}

it_goes_prev_2_comb_9_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.1)
    test "$ret" = "9.0"
}

it_goes_prev_2_comb_9_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.9)
    test "$ret" = "9.8"
}

it_goes_prev_2_comb_9_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.10)
    test "$ret" = "9.9"
}

it_goes_prev_2_comb_9_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.99)
    test "$ret" = "9.98"
}

it_goes_prev_2_comb_9_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.0)
    test "$ret" = "9.99"
}

it_goes_prev_2_comb_10_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.1)
    test "$ret" = "10.0"
}

it_goes_prev_2_comb_10_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.9)
    test "$ret" = "10.8"
}

it_goes_prev_2_comb_10_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.10)
    test "$ret" = "10.9"
}

it_goes_prev_2_comb_10_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.99)
    test "$ret" = "10.98"
}

it_goes_prev_2_comb_10_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.0)
    test "$ret" = "98.99"
}

it_goes_prev_2_comb_99_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.1)
    test "$ret" = "99.0"
}

it_goes_prev_2_comb_99_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.9)
    test "$ret" = "99.8"
}

it_goes_prev_2_comb_99_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.10)
    test "$ret" = "99.9"
}

it_goes_prev_2_comb_99_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.99)
    test "$ret" = "99.98"
}

it_goes_prev_2_comb_99_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.999)
    test "$ret" = "$err_field_size"
}


################
## Backward 3 ##
################

it_goes_prev_3_comb_0_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.0)
    test "$ret" = "master"
}

it_goes_prev_3_comb_0_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.1)
    test "$ret" = "master"
}

it_goes_prev_3_comb_0_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.9)
    test "$ret" = "0.8"
}

it_goes_prev_3_comb_0_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.10)
    test "$ret" = "0.9"
}

it_goes_prev_3_comb_0_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.99)
    test "$ret" = "0.98"
}

it_goes_prev_3_comb_0_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.100)
    test "$ret" = "0.99"
}

it_goes_prev_3_comb_0_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.999)
    test "$ret" = "0.998"
}

it_goes_prev_3_comb_1_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.0)
    test "$ret" = "0.999"
}

it_goes_prev_3_comb_1_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.1)
    test "$ret" = "1.0"
}

it_goes_prev_3_comb_1_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.9)
    test "$ret" = "1.8"
}

it_goes_prev_3_comb_1_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.10)
    test "$ret" = "1.9"
}

it_goes_prev_3_comb_1_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.99)
    test "$ret" = "1.98"
}

it_goes_prev_3_comb_1_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.100)
    test "$ret" = "1.99"
}

it_goes_prev_3_comb_1_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.999)
    test "$ret" = "1.998"
}

it_goes_prev_3_comb_9_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.0)
    test "$ret" = "8.999"
}

it_goes_prev_3_comb_9_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.1)
    test "$ret" = "9.0"
}

it_goes_prev_3_comb_9_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.9)
    test "$ret" = "9.8"
}

it_goes_prev_3_comb_9_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.10)
    test "$ret" = "9.9"
}

it_goes_prev_3_comb_9_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.99)
    test "$ret" = "9.98"
}

it_goes_prev_3_comb_9_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.100)
    test "$ret" = "9.99"
}

it_goes_prev_3_comb_9_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.999)
    test "$ret" = "9.998"
}

it_goes_prev_3_comb_10_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.0)
    test "$ret" = "9.99"
}

it_goes_prev_3_comb_10_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.1)
    test "$ret" = "10.0"
}

it_goes_prev_3_comb_10_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.9)
    test "$ret" = "10.8"
}

it_goes_prev_3_comb_10_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.10)
    test "$ret" = "10.9"
}

it_goes_prev_3_comb_10_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.99)
    test "$ret" = "10.98"
}

it_goes_prev_3_comb_10_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.100)
    test "$ret" = "10.99"
}

it_goes_prev_3_comb_10_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.999)
    test "$ret" = "10.998"
}

it_goes_prev_3_comb_99_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.0)
    test "$ret" = "98.999"
}

it_goes_prev_3_comb_99_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.1)
    test "$ret" = "99.0"
}

it_goes_prev_3_comb_99_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.9)
    test "$ret" = "99.8"
}

it_goes_prev_3_comb_99_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.10)
    test "$ret" = "99.9"
}

it_goes_prev_3_comb_99_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.99)
    test "$ret" = "99.98"
}

it_goes_prev_3_comb_99_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.100)
    test "$ret" = "99.99"
}

it_goes_prev_3_comb_99_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.999)
    test "$ret" = "99.998"
}

it_goes_prev_3_comb_100_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.0)
    test "$ret" = "99.99"
}

it_goes_prev_3_comb_100_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.1)
    test "$ret" = "100.0"
}

it_goes_prev_3_comb_100_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.9)
    test "$ret" = "100.8"
}

it_goes_prev_3_comb_100_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.10)
    test "$ret" = "100.9"
}

it_goes_prev_3_comb_100_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.99)
    test "$ret" = "100.98"
}

it_goes_prev_3_comb_100_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.100)
    test "$ret" = "100.99"
}

it_goes_prev_3_comb_100_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.999)
    test "$ret" = "100.998"
}

it_goes_prev_3_comb_999_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.0)
    test "$ret" = "998.999"
}

it_goes_prev_3_comb_999_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.1)
    test "$ret" = "999.0"
}

it_goes_prev_3_comb_999_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.9)
    test "$ret" = "999.8"
}

it_goes_prev_3_comb_999_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.10)
    test "$ret" = "999.9"
}

it_goes_prev_3_comb_999_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.99)
    test "$ret" = "999.98"
}

it_goes_prev_3_comb_999_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.100)
    test "$ret" = "999.99"
}

it_goes_prev_3_comb_999_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.999)
    test "$ret" = "999.998"
}


###############
## Forward 1 ##
###############

it_goes_next_1_comb_0_0 () {
    ret=$(../get_prev_next_version.sh 1 next 0.0)
    test "$ret" = "0.1"
}

it_goes_next_1_comb_0_1 () {
    ret=$(../get_prev_next_version.sh 1 next 0.1)
    test "$ret" = "0.2"
}

it_goes_next_1_comb_0_9 () {
    ret=$(../get_prev_next_version.sh 1 next 0.9)
    test "$ret" = "1.0"
}

it_goes_next_1_comb_0_10 () {
    ret=$(../get_prev_next_version.sh 1 next 0.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_99 () {
    ret=$(../get_prev_next_version.sh 1 next 0.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_100 () {
    ret=$(../get_prev_next_version.sh 1 next 0.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_999 () {
    ret=$(../get_prev_next_version.sh 1 next 0.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_0 () {
    ret=$(../get_prev_next_version.sh 1 next 1.0)
    test "$ret" = "1.1"
}

it_goes_next_1_comb_1_1 () {
    ret=$(../get_prev_next_version.sh 1 next 1.1)
    test "$ret" = "1.2"
}

it_goes_next_1_comb_1_9 () {
    ret=$(../get_prev_next_version.sh 1 next 1.9)
    test "$ret" = "2.0"
}

it_goes_next_1_comb_1_10 () {
    ret=$(../get_prev_next_version.sh 1 next 1.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_99 () {
    ret=$(../get_prev_next_version.sh 1 next 1.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_100 () {
    ret=$(../get_prev_next_version.sh 1 next 1.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_999 () {
    ret=$(../get_prev_next_version.sh 1 next 1.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_0 () {
    ret=$(../get_prev_next_version.sh 1 next 9.0)
    test "$ret" = "9.1"
}

it_goes_next_1_comb_9_1 () {
    ret=$(../get_prev_next_version.sh 1 next 9.1)
    test "$ret" = "9.2"
}

it_goes_next_1_comb_9_9 () {
    ret=$(../get_prev_next_version.sh 1 next 9.9)
    test "$ret" = "9.9.1"
}

it_goes_next_1_comb_9_10 () {
    ret=$(../get_prev_next_version.sh 1 next 9.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_99 () {
    ret=$(../get_prev_next_version.sh 1 next 9.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_100 () {
    ret=$(../get_prev_next_version.sh 1 next 9.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_999 () {
    ret=$(../get_prev_next_version.sh 1 next 9.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_0 () {
    ret=$(../get_prev_next_version.sh 1 next 10.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_1 () {
    ret=$(../get_prev_next_version.sh 1 next 10.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_9 () {
    ret=$(../get_prev_next_version.sh 1 next 10.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_10 () {
    ret=$(../get_prev_next_version.sh 1 next 10.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_99 () {
    ret=$(../get_prev_next_version.sh 1 next 10.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_100 () {
    ret=$(../get_prev_next_version.sh 1 next 10.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_999 () {
    ret=$(../get_prev_next_version.sh 1 next 10.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_0 () {
    ret=$(../get_prev_next_version.sh 1 next 99.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_1 () {
    ret=$(../get_prev_next_version.sh 1 next 99.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_9 () {
    ret=$(../get_prev_next_version.sh 1 next 99.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_10 () {
    ret=$(../get_prev_next_version.sh 1 next 99.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_99 () {
    ret=$(../get_prev_next_version.sh 1 next 99.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_100 () {
    ret=$(../get_prev_next_version.sh 1 next 99.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_999 () {
    ret=$(../get_prev_next_version.sh 1 next 99.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_0 () {
    ret=$(../get_prev_next_version.sh 1 next 100.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_1 () {
    ret=$(../get_prev_next_version.sh 1 next 100.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_9 () {
    ret=$(../get_prev_next_version.sh 1 next 100.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_10 () {
    ret=$(../get_prev_next_version.sh 1 next 100.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_99 () {
    ret=$(../get_prev_next_version.sh 1 next 100.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_100 () {
    ret=$(../get_prev_next_version.sh 1 next 100.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_999 () {
    ret=$(../get_prev_next_version.sh 1 next 100.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_0 () {
    ret=$(../get_prev_next_version.sh 1 next 999.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_1 () {
    ret=$(../get_prev_next_version.sh 1 next 999.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_9 () {
    ret=$(../get_prev_next_version.sh 1 next 999.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_10 () {
    ret=$(../get_prev_next_version.sh 1 next 999.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_99 () {
    ret=$(../get_prev_next_version.sh 1 next 999.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_100 () {
    ret=$(../get_prev_next_version.sh 1 next 999.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_999 () {
    ret=$(../get_prev_next_version.sh 1 next 999.999)
    test "$ret" = "$err_field_size"
}


###############
## Forward 2 ##
###############

it_goes_next_2_comb_0_0 () {
    ret=$(../get_prev_next_version.sh 2 next 0.0)
    test "$ret" = "0.1"
}

it_goes_next_2_comb_0_1 () {
    ret=$(../get_prev_next_version.sh 2 next 0.1)
    test "$ret" = "0.2"
}

it_goes_next_2_comb_0_9 () {
    ret=$(../get_prev_next_version.sh 2 next 0.9)
    test "$ret" = "0.10"
}

it_goes_next_2_comb_0_10 () {
    ret=$(../get_prev_next_version.sh 2 next 0.10)
    test "$ret" = "0.11"
}

it_goes_next_2_comb_0_99 () {
    ret=$(../get_prev_next_version.sh 2 next 0.99)
    test "$ret" = "1.0"
}

it_goes_next_2_comb_0_100 () {
    ret=$(../get_prev_next_version.sh 2 next 0.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_999 () {
    ret=$(../get_prev_next_version.sh 2 next 0.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_0 () {
    ret=$(../get_prev_next_version.sh 2 next 1.0)
    test "$ret" = "1.1"
}

it_goes_next_2_comb_1_1 () {
    ret=$(../get_prev_next_version.sh 2 next 1.1)
    test "$ret" = "1.2"
}

it_goes_next_2_comb_1_9 () {
    ret=$(../get_prev_next_version.sh 2 next 1.9)
    test "$ret" = "1.10"
}

it_goes_next_2_comb_1_10 () {
    ret=$(../get_prev_next_version.sh 2 next 1.10)
    test "$ret" = "1.11"
}

it_goes_next_2_comb_1_99 () {
    ret=$(../get_prev_next_version.sh 2 next 1.99)
    test "$ret" = "2.0"
}

it_goes_next_2_comb_1_100 () {
    ret=$(../get_prev_next_version.sh 2 next 1.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_999 () {
    ret=$(../get_prev_next_version.sh 2 next 1.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_0 () {
    ret=$(../get_prev_next_version.sh 2 next 9.0)
    test "$ret" = "9.1"
}

it_goes_next_2_comb_9_1 () {
    ret=$(../get_prev_next_version.sh 2 next 9.1)
    test "$ret" = "9.2"
}

it_goes_next_2_comb_9_9 () {
    ret=$(../get_prev_next_version.sh 2 next 9.9)
    test "$ret" = "9.10"
}

it_goes_next_2_comb_9_10 () {
    ret=$(../get_prev_next_version.sh 2 next 9.10)
    test "$ret" = "9.11"
}

it_goes_next_2_comb_9_99 () {
    ret=$(../get_prev_next_version.sh 2 next 9.99)
    test "$ret" = "10.0"
}

it_goes_next_2_comb_9_100 () {
    ret=$(../get_prev_next_version.sh 2 next 9.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_999 () {
    ret=$(../get_prev_next_version.sh 2 next 9.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_0 () {
    ret=$(../get_prev_next_version.sh 2 next 10.0)
    test "$ret" = "10.1"
}

it_goes_next_2_comb_10_1 () {
    ret=$(../get_prev_next_version.sh 2 next 10.1)
    test "$ret" = "10.2"
}

it_goes_next_2_comb_10_9 () {
    ret=$(../get_prev_next_version.sh 2 next 10.9)
    test "$ret" = "10.10"
}

it_goes_next_2_comb_10_10 () {
    ret=$(../get_prev_next_version.sh 2 next 10.10)
    test "$ret" = "10.11"
}

it_goes_next_2_comb_10_99 () {
    ret=$(../get_prev_next_version.sh 2 next 10.99)
    test "$ret" = "11.0"
}

it_goes_next_2_comb_10_100 () {
    ret=$(../get_prev_next_version.sh 2 next 10.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_999 () {
    ret=$(../get_prev_next_version.sh 2 next 10.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_0 () {
    ret=$(../get_prev_next_version.sh 2 next 99.0)
    test "$ret" = "99.1"
}

it_goes_next_2_comb_99_1 () {
    ret=$(../get_prev_next_version.sh 2 next 99.1)
    test "$ret" = "99.2"
}

it_goes_next_2_comb_99_9 () {
    ret=$(../get_prev_next_version.sh 2 next 99.9)
    test "$ret" = "99.10"
}

it_goes_next_2_comb_99_10 () {
    ret=$(../get_prev_next_version.sh 2 next 99.10)
    test "$ret" = "99.11"
}

it_goes_next_2_comb_99_99 () {
    ret=$(../get_prev_next_version.sh 2 next 99.99)
    test "$ret" = "99.99.1"
}

it_goes_next_2_comb_99_100 () {
    ret=$(../get_prev_next_version.sh 2 next 99.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_999 () {
    ret=$(../get_prev_next_version.sh 2 next 99.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_0 () {
    ret=$(../get_prev_next_version.sh 2 next 100.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_1 () {
    ret=$(../get_prev_next_version.sh 2 next 100.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_9 () {
    ret=$(../get_prev_next_version.sh 2 next 100.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_10 () {
    ret=$(../get_prev_next_version.sh 2 next 100.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_99 () {
    ret=$(../get_prev_next_version.sh 2 next 100.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_100 () {
    ret=$(../get_prev_next_version.sh 2 next 100.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_999 () {
    ret=$(../get_prev_next_version.sh 2 next 100.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_0 () {
    ret=$(../get_prev_next_version.sh 2 next 999.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_1 () {
    ret=$(../get_prev_next_version.sh 2 next 999.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_9 () {
    ret=$(../get_prev_next_version.sh 2 next 999.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_10 () {
    ret=$(../get_prev_next_version.sh 2 next 999.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_99 () {
    ret=$(../get_prev_next_version.sh 2 next 999.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_100 () {
    ret=$(../get_prev_next_version.sh 2 next 999.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_999 () {
    ret=$(../get_prev_next_version.sh 2 next 999.999)
    test "$ret" = "$err_field_size"
}


###############
## Forward 3 ##
###############

it_goes_next_3_comb_0_0 () {
    ret=$(../get_prev_next_version.sh 3 next 0.0)
    test "$ret" = "0.1"
}

it_goes_next_3_comb_0_1 () {
    ret=$(../get_prev_next_version.sh 3 next 0.1)
    test "$ret" = "0.2"
}

it_goes_next_3_comb_0_9 () {
    ret=$(../get_prev_next_version.sh 3 next 0.9)
    test "$ret" = "0.10"
}

it_goes_next_3_comb_0_10 () {
    ret=$(../get_prev_next_version.sh 3 next 0.10)
    test "$ret" = "0.11"
}

it_goes_next_3_comb_0_99 () {
    ret=$(../get_prev_next_version.sh 3 next 0.99)
    test "$ret" = "0.100"
}

it_goes_next_3_comb_0_100 () {
    ret=$(../get_prev_next_version.sh 3 next 0.100)
    test "$ret" = "0.101"
}

it_goes_next_3_comb_0_999 () {
    ret=$(../get_prev_next_version.sh 3 next 0.999)
    test "$ret" = "1.0"
}

it_goes_next_3_comb_1_0 () {
    ret=$(../get_prev_next_version.sh 3 next 1.0)
    test "$ret" = "1.1"
}

it_goes_next_3_comb_1_1 () {
    ret=$(../get_prev_next_version.sh 3 next 1.1)
    test "$ret" = "1.2"
}

it_goes_next_3_comb_1_9 () {
    ret=$(../get_prev_next_version.sh 3 next 1.9)
    test "$ret" = "1.10"
}

it_goes_next_3_comb_1_10 () {
    ret=$(../get_prev_next_version.sh 3 next 1.10)
    test "$ret" = "1.11"
}

it_goes_next_3_comb_1_99 () {
    ret=$(../get_prev_next_version.sh 3 next 1.99)
    test "$ret" = "1.100"
}

it_goes_next_3_comb_1_100 () {
    ret=$(../get_prev_next_version.sh 3 next 1.100)
    test "$ret" = "1.101"
}

it_goes_next_3_comb_1_999 () {
    ret=$(../get_prev_next_version.sh 3 next 1.999)
    test "$ret" = "2.0"
}

it_goes_next_3_comb_9_0 () {
    ret=$(../get_prev_next_version.sh 3 next 9.0)
    test "$ret" = "9.1"
}

it_goes_next_3_comb_9_1 () {
    ret=$(../get_prev_next_version.sh 3 next 9.1)
    test "$ret" = "9.2"
}

it_goes_next_3_comb_9_9 () {
    ret=$(../get_prev_next_version.sh 3 next 9.9)
    test "$ret" = "9.10"
}

it_goes_next_3_comb_9_10 () {
    ret=$(../get_prev_next_version.sh 3 next 9.10)
    test "$ret" = "9.11"
}

it_goes_next_3_comb_9_99 () {
    ret=$(../get_prev_next_version.sh 3 next 9.99)
    test "$ret" = "9.100"
}

it_goes_next_3_comb_9_100 () {
    ret=$(../get_prev_next_version.sh 3 next 9.100)
    test "$ret" = "9.101"
}

it_goes_next_3_comb_9_999 () {
    ret=$(../get_prev_next_version.sh 3 next 9.999)
    test "$ret" = "10.0"
}

it_goes_next_3_comb_10_0 () {
    ret=$(../get_prev_next_version.sh 3 next 10.0)
    test "$ret" = "10.1"
}

it_goes_next_3_comb_10_1 () {
    ret=$(../get_prev_next_version.sh 3 next 10.1)
    test "$ret" = "10.2"
}

it_goes_next_3_comb_10_9 () {
    ret=$(../get_prev_next_version.sh 3 next 10.9)
    test "$ret" = "10.10"
}

it_goes_next_3_comb_10_10 () {
    ret=$(../get_prev_next_version.sh 3 next 10.10)
    test "$ret" = "10.11"
}

it_goes_next_3_comb_10_99 () {
    ret=$(../get_prev_next_version.sh 3 next 10.99)
    test "$ret" = "10.100"
}

it_goes_next_3_comb_10_100 () {
    ret=$(../get_prev_next_version.sh 3 next 10.100)
    test "$ret" = "10.101"
}

it_goes_next_3_comb_10_999 () {
    ret=$(../get_prev_next_version.sh 3 next 10.999)
    test "$ret" = "11.0"
}

it_goes_next_3_comb_99_0 () {
    ret=$(../get_prev_next_version.sh 3 next 99.0)
    test "$ret" = "99.1"
}

it_goes_next_3_comb_99_1 () {
    ret=$(../get_prev_next_version.sh 3 next 99.1)
    test "$ret" = "99.2"
}

it_goes_next_3_comb_99_9 () {
    ret=$(../get_prev_next_version.sh 3 next 99.9)
    test "$ret" = "99.10"
}

it_goes_next_3_comb_99_10 () {
    ret=$(../get_prev_next_version.sh 3 next 99.10)
    test "$ret" = "99.11"
}

it_goes_next_3_comb_99_99 () {
    ret=$(../get_prev_next_version.sh 3 next 99.99)
    test "$ret" = "99.100"
}

it_goes_next_3_comb_99_100 () {
    ret=$(../get_prev_next_version.sh 3 next 99.100)
    test "$ret" = "99.101"
}

it_goes_next_3_comb_99_999 () {
    ret=$(../get_prev_next_version.sh 3 next 99.999)
    test "$ret" = "100.0"
}

it_goes_next_3_comb_100_0 () {
    ret=$(../get_prev_next_version.sh 3 next 100.0)
    test "$ret" = "100.1"
}

it_goes_next_3_comb_100_1 () {
    ret=$(../get_prev_next_version.sh 3 next 100.1)
    test "$ret" = "100.2"
}

it_goes_next_3_comb_100_9 () {
    ret=$(../get_prev_next_version.sh 3 next 100.9)
    test "$ret" = "100.10"
}

it_goes_next_3_comb_100_10 () {
    ret=$(../get_prev_next_version.sh 3 next 100.10)
    test "$ret" = "100.11"
}

it_goes_next_3_comb_100_99 () {
    ret=$(../get_prev_next_version.sh 3 next 100.99)
    test "$ret" = "100.100"
}

it_goes_next_3_comb_100_100 () {
    ret=$(../get_prev_next_version.sh 3 next 100.100)
    test "$ret" = "100.101"
}

it_goes_next_3_comb_100_999 () {
    ret=$(../get_prev_next_version.sh 3 next 100.999)
    test "$ret" = "101.0"
}

it_goes_next_3_comb_999_0 () {
    ret=$(../get_prev_next_version.sh 3 next 999.0)
    test "$ret" = "999.1"
}

it_goes_next_3_comb_999_1 () {
    ret=$(../get_prev_next_version.sh 3 next 999.1)
    test "$ret" = "999.2"
}

it_goes_next_3_comb_999_9 () {
    ret=$(../get_prev_next_version.sh 3 next 999.9)
    test "$ret" = "999.10"
}

it_goes_next_3_comb_999_10 () {
    ret=$(../get_prev_next_version.sh 3 next 999.10)
    test "$ret" = "999.11"
}

it_goes_next_3_comb_999_99 () {
    ret=$(../get_prev_next_version.sh 3 next 999.99)
    test "$ret" = "999.100"
}

it_goes_next_3_comb_999_100 () {
    ret=$(../get_prev_next_version.sh 3 next 999.100)
    test "$ret" = "999.101"
}

it_goes_next_3_comb_999_999 () {
    ret=$(../get_prev_next_version.sh 3 next 999.999)
    test "$ret" = "999.999.1"
}


################
## Backward 1 ##
################

it_goes_prev_1_comb_0_0_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.0.0)
    test "$ret" = "master"
}

it_goes_prev_1_comb_0_0_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.0.1)
    test "$ret" = "master"
}

it_goes_prev_1_comb_0_0_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.0.9)
    test "$ret" = "0.0.8"
}

it_goes_prev_1_comb_0_0_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.0.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_0_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.0.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_0_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_0_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_1_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.1.0)
    test "$ret" = "0.0.9"
}

it_goes_prev_1_comb_0_1_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.1.1)
    test "$ret" = "0.1.0"
}

it_goes_prev_1_comb_0_1_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.1.9)
    test "$ret" = "0.1.8"
}

it_goes_prev_1_comb_0_1_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.1.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_1_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.1.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_1_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_1_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_9_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.9.0)
    test "$ret" = "0.8.9"
}

it_goes_prev_1_comb_0_9_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.9.1)
    test "$ret" = "0.9.0"
}

it_goes_prev_1_comb_0_9_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.9.9)
    test "$ret" = "0.9.8"
}

it_goes_prev_1_comb_0_9_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.9.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_9_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.9.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_9_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_9_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_10_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.10.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_10_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.10.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_10_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.10.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_10_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.10.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_10_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.10.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_10_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_10_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_99_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.99.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_99_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.99.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_99_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.99.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_99_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.99.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_99_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.99.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_99_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_99_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_100_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_100_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_100_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_100_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_100_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_100_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_100_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_999_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_999_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_999_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_999_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_999_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_999_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_0_999_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_0_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.0.0)
    test "$ret" = "0.9.9"
}

it_goes_prev_1_comb_1_0_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.0.1)
    test "$ret" = "1.0.0"
}

it_goes_prev_1_comb_1_0_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.0.9)
    test "$ret" = "1.0.8"
}

it_goes_prev_1_comb_1_0_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.0.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_0_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.0.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_0_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_0_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_1_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.1.0)
    test "$ret" = "1.0.9"
}

it_goes_prev_1_comb_1_1_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.1.1)
    test "$ret" = "1.1.0"
}

it_goes_prev_1_comb_1_1_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.1.9)
    test "$ret" = "1.1.8"
}

it_goes_prev_1_comb_1_1_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.1.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_1_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.1.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_1_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_1_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_9_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.9.0)
    test "$ret" = "1.8.9"
}

it_goes_prev_1_comb_1_9_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.9.1)
    test "$ret" = "1.9.0"
}

it_goes_prev_1_comb_1_9_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.9.9)
    test "$ret" = "1.9.8"
}

it_goes_prev_1_comb_1_9_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.9.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_9_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.9.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_9_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_9_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_10_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.10.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_10_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.10.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_10_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.10.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_10_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.10.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_10_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.10.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_10_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_10_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_99_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.99.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_99_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.99.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_99_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.99.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_99_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.99.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_99_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.99.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_99_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_99_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_100_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_100_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_100_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_100_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_100_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_100_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_100_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_999_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_999_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_999_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_999_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_999_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_999_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_1_999_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_0_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.0.0)
    test "$ret" = "8.9.9"
}

it_goes_prev_1_comb_9_0_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.0.1)
    test "$ret" = "9.0.0"
}

it_goes_prev_1_comb_9_0_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.0.9)
    test "$ret" = "9.0.8"
}

it_goes_prev_1_comb_9_0_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.0.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_0_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.0.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_0_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_0_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_1_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.1.0)
    test "$ret" = "9.0.9"
}

it_goes_prev_1_comb_9_1_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.1.1)
    test "$ret" = "9.1.0"
}

it_goes_prev_1_comb_9_1_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.1.9)
    test "$ret" = "9.1.8"
}

it_goes_prev_1_comb_9_1_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.1.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_1_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.1.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_1_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_1_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_9_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.9.0)
    test "$ret" = "9.8.9"
}

it_goes_prev_1_comb_9_9_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.9.1)
    test "$ret" = "9.9.0"
}

it_goes_prev_1_comb_9_9_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.9.9)
    test "$ret" = "9.9.8"
}

it_goes_prev_1_comb_9_9_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.9.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_9_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.9.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_9_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_9_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_10_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.10.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_10_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.10.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_10_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.10.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_10_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.10.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_10_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.10.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_10_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_10_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_99_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.99.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_99_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.99.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_99_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.99.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_99_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.99.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_99_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.99.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_99_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_99_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_100_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_100_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_100_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_100_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_100_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_100_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_100_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_999_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_999_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_999_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_999_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_999_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_999_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_9_999_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 9.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_0_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.0.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_0_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.0.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_0_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.0.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_0_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.0.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_0_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.0.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_0_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_0_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_1_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.1.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_1_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.1.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_1_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.1.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_1_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.1.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_1_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.1.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_1_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_1_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_9_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.9.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_9_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.9.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_9_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.9.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_9_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.9.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_9_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.9.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_9_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_9_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_10_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.10.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_10_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.10.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_10_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.10.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_10_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.10.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_10_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.10.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_10_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_10_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_99_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.99.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_99_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.99.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_99_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.99.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_99_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.99.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_99_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.99.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_99_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_99_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_100_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_100_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_100_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_100_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_100_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_100_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_100_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_999_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_999_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_999_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_999_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_999_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_999_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_10_999_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_0_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.0.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_0_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.0.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_0_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.0.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_0_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.0.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_0_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.0.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_0_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_0_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_1_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.1.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_1_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.1.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_1_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.1.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_1_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.1.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_1_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.1.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_1_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_1_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_9_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.9.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_9_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.9.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_9_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.9.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_9_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.9.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_9_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.9.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_9_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_9_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_10_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.10.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_10_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.10.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_10_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.10.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_10_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.10.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_10_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.10.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_10_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_10_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_99_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.99.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_99_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.99.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_99_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.99.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_99_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.99.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_99_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.99.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_99_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_99_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_100_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_100_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_100_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_100_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_100_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_100_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_100_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_999_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_999_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_999_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_999_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_999_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_999_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_99_999_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 99.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_0_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.0.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_0_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.0.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_0_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.0.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_0_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.0.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_0_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.0.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_0_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_0_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_1_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.1.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_1_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.1.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_1_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.1.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_1_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.1.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_1_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.1.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_1_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_1_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_9_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.9.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_9_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.9.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_9_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.9.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_9_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.9.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_9_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.9.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_9_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_9_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_10_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.10.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_10_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.10.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_10_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.10.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_10_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.10.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_10_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.10.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_10_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_10_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_99_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.99.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_99_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.99.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_99_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.99.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_99_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.99.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_99_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.99.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_99_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_99_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_100_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_100_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_100_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_100_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_100_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_100_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_100_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_999_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_999_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_999_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_999_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_999_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_999_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_100_999_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_0_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.0.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_0_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.0.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_0_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.0.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_0_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.0.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_0_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.0.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_0_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_0_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_1_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.1.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_1_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.1.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_1_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.1.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_1_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.1.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_1_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.1.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_1_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_1_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_9_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.9.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_9_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.9.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_9_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.9.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_9_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.9.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_9_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.9.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_9_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_9_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_10_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.10.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_10_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.10.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_10_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.10.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_10_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.10.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_10_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.10.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_10_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_10_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_99_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.99.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_99_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.99.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_99_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.99.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_99_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.99.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_99_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.99.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_99_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_99_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_100_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_100_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_100_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_100_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_100_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_100_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_100_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_999_0 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_999_1 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_999_9 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_999_10 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_999_99 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_999_100 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_1_comb_999_999_999 () {
    ret=$(../get_prev_next_version.sh 1 prev 999.999.999)
    test "$ret" = "$err_field_size"
}


################
## Backward 2 ##
################

it_goes_prev_2_comb_0_0_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.0.0)
    test "$ret" = "master"
}

it_goes_prev_2_comb_0_0_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.0.1)
    test "$ret" = "master"
}

it_goes_prev_2_comb_0_0_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.0.9)
    test "$ret" = "0.0.8"
}

it_goes_prev_2_comb_0_0_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.0.10)
    test "$ret" = "0.0.9"
}

it_goes_prev_2_comb_0_0_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.0.99)
    test "$ret" = "0.0.98"
}

it_goes_prev_2_comb_0_0_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_0_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_1_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.1.0)
    test "$ret" = "0.0.99"
}

it_goes_prev_2_comb_0_1_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.1.1)
    test "$ret" = "0.1.0"
}

it_goes_prev_2_comb_0_1_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.1.9)
    test "$ret" = "0.1.8"
}

it_goes_prev_2_comb_0_1_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.1.10)
    test "$ret" = "0.1.9"
}

it_goes_prev_2_comb_0_1_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.1.99)
    test "$ret" = "0.1.98"
}

it_goes_prev_2_comb_0_1_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_1_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_9_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.9.0)
    test "$ret" = "0.8.99"
}

it_goes_prev_2_comb_0_9_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.9.1)
    test "$ret" = "0.9.0"
}

it_goes_prev_2_comb_0_9_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.9.9)
    test "$ret" = "0.9.8"
}

it_goes_prev_2_comb_0_9_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.9.10)
    test "$ret" = "0.9.9"
}

it_goes_prev_2_comb_0_9_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.9.99)
    test "$ret" = "0.9.98"
}

it_goes_prev_2_comb_0_9_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_9_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_10_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.10.0)
    test "$ret" = "0.9.99"
}

it_goes_prev_2_comb_0_10_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.10.1)
    test "$ret" = "0.10.0"
}

it_goes_prev_2_comb_0_10_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.10.9)
    test "$ret" = "0.10.8"
}

it_goes_prev_2_comb_0_10_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.10.10)
    test "$ret" = "0.10.9"
}

it_goes_prev_2_comb_0_10_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.10.99)
    test "$ret" = "0.10.98"
}

it_goes_prev_2_comb_0_10_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_10_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_99_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.99.0)
    test "$ret" = "0.98.99"
}

it_goes_prev_2_comb_0_99_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.99.1)
    test "$ret" = "0.99.0"
}

it_goes_prev_2_comb_0_99_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.99.9)
    test "$ret" = "0.99.8"
}

it_goes_prev_2_comb_0_99_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.99.10)
    test "$ret" = "0.99.9"
}

it_goes_prev_2_comb_0_99_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.99.99)
    test "$ret" = "0.99.98"
}

it_goes_prev_2_comb_0_99_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_99_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_100_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_100_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_100_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_100_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_100_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_100_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_100_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_999_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_999_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_999_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_999_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_999_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_999_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_0_999_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_0_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.0.0)
    test "$ret" = "0.99.99"
}

it_goes_prev_2_comb_1_0_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.0.1)
    test "$ret" = "1.0.0"
}

it_goes_prev_2_comb_1_0_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.0.9)
    test "$ret" = "1.0.8"
}

it_goes_prev_2_comb_1_0_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.0.10)
    test "$ret" = "1.0.9"
}

it_goes_prev_2_comb_1_0_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.0.99)
    test "$ret" = "1.0.98"
}

it_goes_prev_2_comb_1_0_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_0_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_1_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.1.0)
    test "$ret" = "1.0.99"
}

it_goes_prev_2_comb_1_1_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.1.1)
    test "$ret" = "1.1.0"
}

it_goes_prev_2_comb_1_1_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.1.9)
    test "$ret" = "1.1.8"
}

it_goes_prev_2_comb_1_1_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.1.10)
    test "$ret" = "1.1.9"
}

it_goes_prev_2_comb_1_1_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.1.99)
    test "$ret" = "1.1.98"
}

it_goes_prev_2_comb_1_1_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_1_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_9_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.9.0)
    test "$ret" = "1.8.99"
}

it_goes_prev_2_comb_1_9_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.9.1)
    test "$ret" = "1.9.0"
}

it_goes_prev_2_comb_1_9_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.9.9)
    test "$ret" = "1.9.8"
}

it_goes_prev_2_comb_1_9_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.9.10)
    test "$ret" = "1.9.9"
}

it_goes_prev_2_comb_1_9_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.9.99)
    test "$ret" = "1.9.98"
}

it_goes_prev_2_comb_1_9_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_9_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_10_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.10.0)
    test "$ret" = "1.9.99"
}

it_goes_prev_2_comb_1_10_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.10.1)
    test "$ret" = "1.10.0"
}

it_goes_prev_2_comb_1_10_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.10.9)
    test "$ret" = "1.10.8"
}

it_goes_prev_2_comb_1_10_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.10.10)
    test "$ret" = "1.10.9"
}

it_goes_prev_2_comb_1_10_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.10.99)
    test "$ret" = "1.10.98"
}

it_goes_prev_2_comb_1_10_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_10_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_99_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.99.0)
    test "$ret" = "1.98.99"
}

it_goes_prev_2_comb_1_99_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.99.1)
    test "$ret" = "1.99.0"
}

it_goes_prev_2_comb_1_99_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.99.9)
    test "$ret" = "1.99.8"
}

it_goes_prev_2_comb_1_99_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.99.10)
    test "$ret" = "1.99.9"
}

it_goes_prev_2_comb_1_99_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.99.99)
    test "$ret" = "1.99.98"
}

it_goes_prev_2_comb_1_99_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_99_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_100_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_100_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_100_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_100_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_100_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_100_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_100_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_999_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_999_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_999_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_999_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_999_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_999_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_1_999_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 1.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_0_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.0.0)
    test "$ret" = "8.99.99"
}

it_goes_prev_2_comb_9_0_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.0.1)
    test "$ret" = "9.0.0"
}

it_goes_prev_2_comb_9_0_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.0.9)
    test "$ret" = "9.0.8"
}

it_goes_prev_2_comb_9_0_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.0.10)
    test "$ret" = "9.0.9"
}

it_goes_prev_2_comb_9_0_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.0.99)
    test "$ret" = "9.0.98"
}

it_goes_prev_2_comb_9_0_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_0_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_1_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.1.0)
    test "$ret" = "9.0.99"
}

it_goes_prev_2_comb_9_1_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.1.1)
    test "$ret" = "9.1.0"
}

it_goes_prev_2_comb_9_1_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.1.9)
    test "$ret" = "9.1.8"
}

it_goes_prev_2_comb_9_1_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.1.10)
    test "$ret" = "9.1.9"
}

it_goes_prev_2_comb_9_1_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.1.99)
    test "$ret" = "9.1.98"
}

it_goes_prev_2_comb_9_1_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_1_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_9_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.9.0)
    test "$ret" = "9.8.99"
}

it_goes_prev_2_comb_9_9_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.9.1)
    test "$ret" = "9.9.0"
}

it_goes_prev_2_comb_9_9_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.9.9)
    test "$ret" = "9.9.8"
}

it_goes_prev_2_comb_9_9_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.9.10)
    test "$ret" = "9.9.9"
}

it_goes_prev_2_comb_9_9_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.9.99)
    test "$ret" = "9.9.98"
}

it_goes_prev_2_comb_9_9_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_9_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_10_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.10.0)
    test "$ret" = "9.9.99"
}

it_goes_prev_2_comb_9_10_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.10.1)
    test "$ret" = "9.10.0"
}

it_goes_prev_2_comb_9_10_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.10.9)
    test "$ret" = "9.10.8"
}

it_goes_prev_2_comb_9_10_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.10.10)
    test "$ret" = "9.10.9"
}

it_goes_prev_2_comb_9_10_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.10.99)
    test "$ret" = "9.10.98"
}

it_goes_prev_2_comb_9_10_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_10_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_99_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.99.0)
    test "$ret" = "9.98.99"
}

it_goes_prev_2_comb_9_99_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.99.1)
    test "$ret" = "9.99.0"
}

it_goes_prev_2_comb_9_99_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.99.9)
    test "$ret" = "9.99.8"
}

it_goes_prev_2_comb_9_99_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.99.10)
    test "$ret" = "9.99.9"
}

it_goes_prev_2_comb_9_99_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.99.99)
    test "$ret" = "9.99.98"
}

it_goes_prev_2_comb_9_99_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_99_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_100_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_100_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_100_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_100_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_100_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_100_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_100_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_999_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_999_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_999_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_999_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_999_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_999_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_9_999_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 9.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_0_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.0.0)
    test "$ret" = "9.99.99"
}

it_goes_prev_2_comb_10_0_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.0.1)
    test "$ret" = "10.0.0"
}

it_goes_prev_2_comb_10_0_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.0.9)
    test "$ret" = "10.0.8"
}

it_goes_prev_2_comb_10_0_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.0.10)
    test "$ret" = "10.0.9"
}

it_goes_prev_2_comb_10_0_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.0.99)
    test "$ret" = "10.0.98"
}

it_goes_prev_2_comb_10_0_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_0_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_1_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.1.0)
    test "$ret" = "10.0.99"
}

it_goes_prev_2_comb_10_1_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.1.1)
    test "$ret" = "10.1.0"
}

it_goes_prev_2_comb_10_1_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.1.9)
    test "$ret" = "10.1.8"
}

it_goes_prev_2_comb_10_1_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.1.10)
    test "$ret" = "10.1.9"
}

it_goes_prev_2_comb_10_1_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.1.99)
    test "$ret" = "10.1.98"
}

it_goes_prev_2_comb_10_1_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_1_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_9_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.9.0)
    test "$ret" = "10.8.99"
}

it_goes_prev_2_comb_10_9_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.9.1)
    test "$ret" = "10.9.0"
}

it_goes_prev_2_comb_10_9_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.9.9)
    test "$ret" = "10.9.8"
}

it_goes_prev_2_comb_10_9_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.9.10)
    test "$ret" = "10.9.9"
}

it_goes_prev_2_comb_10_9_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.9.99)
    test "$ret" = "10.9.98"
}

it_goes_prev_2_comb_10_9_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_9_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_10_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.10.0)
    test "$ret" = "10.9.99"
}

it_goes_prev_2_comb_10_10_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.10.1)
    test "$ret" = "10.10.0"
}

it_goes_prev_2_comb_10_10_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.10.9)
    test "$ret" = "10.10.8"
}

it_goes_prev_2_comb_10_10_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.10.10)
    test "$ret" = "10.10.9"
}

it_goes_prev_2_comb_10_10_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.10.99)
    test "$ret" = "10.10.98"
}

it_goes_prev_2_comb_10_10_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_10_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_99_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.99.0)
    test "$ret" = "10.98.99"
}

it_goes_prev_2_comb_10_99_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.99.1)
    test "$ret" = "10.99.0"
}

it_goes_prev_2_comb_10_99_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.99.9)
    test "$ret" = "10.99.8"
}

it_goes_prev_2_comb_10_99_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.99.10)
    test "$ret" = "10.99.9"
}

it_goes_prev_2_comb_10_99_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.99.99)
    test "$ret" = "10.99.98"
}

it_goes_prev_2_comb_10_99_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_99_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_100_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_100_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_100_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_100_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_100_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_100_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_100_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_999_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_999_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_999_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_999_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_999_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_999_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_10_999_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 10.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_0_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.0.0)
    test "$ret" = "98.99.99"
}

it_goes_prev_2_comb_99_0_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.0.1)
    test "$ret" = "99.0.0"
}

it_goes_prev_2_comb_99_0_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.0.9)
    test "$ret" = "99.0.8"
}

it_goes_prev_2_comb_99_0_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.0.10)
    test "$ret" = "99.0.9"
}

it_goes_prev_2_comb_99_0_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.0.99)
    test "$ret" = "99.0.98"
}

it_goes_prev_2_comb_99_0_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_0_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_1_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.1.0)
    test "$ret" = "99.0.99"
}

it_goes_prev_2_comb_99_1_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.1.1)
    test "$ret" = "99.1.0"
}

it_goes_prev_2_comb_99_1_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.1.9)
    test "$ret" = "99.1.8"
}

it_goes_prev_2_comb_99_1_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.1.10)
    test "$ret" = "99.1.9"
}

it_goes_prev_2_comb_99_1_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.1.99)
    test "$ret" = "99.1.98"
}

it_goes_prev_2_comb_99_1_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_1_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_9_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.9.0)
    test "$ret" = "99.8.99"
}

it_goes_prev_2_comb_99_9_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.9.1)
    test "$ret" = "99.9.0"
}

it_goes_prev_2_comb_99_9_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.9.9)
    test "$ret" = "99.9.8"
}

it_goes_prev_2_comb_99_9_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.9.10)
    test "$ret" = "99.9.9"
}

it_goes_prev_2_comb_99_9_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.9.99)
    test "$ret" = "99.9.98"
}

it_goes_prev_2_comb_99_9_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_9_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_10_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.10.0)
    test "$ret" = "99.9.99"
}

it_goes_prev_2_comb_99_10_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.10.1)
    test "$ret" = "99.10.0"
}

it_goes_prev_2_comb_99_10_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.10.9)
    test "$ret" = "99.10.8"
}

it_goes_prev_2_comb_99_10_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.10.10)
    test "$ret" = "99.10.9"
}

it_goes_prev_2_comb_99_10_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.10.99)
    test "$ret" = "99.10.98"
}

it_goes_prev_2_comb_99_10_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_10_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_99_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.99.0)
    test "$ret" = "99.98.99"
}

it_goes_prev_2_comb_99_99_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.99.1)
    test "$ret" = "99.99.0"
}

it_goes_prev_2_comb_99_99_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.99.9)
    test "$ret" = "99.99.8"
}

it_goes_prev_2_comb_99_99_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.99.10)
    test "$ret" = "99.99.9"
}

it_goes_prev_2_comb_99_99_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.99.99)
    test "$ret" = "99.99.98"
}

it_goes_prev_2_comb_99_99_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_99_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_100_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_100_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_100_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_100_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_100_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_100_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_100_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_999_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_999_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_999_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_999_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_999_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_999_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_99_999_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 99.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_0_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.0.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_0_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.0.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_0_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.0.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_0_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.0.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_0_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.0.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_0_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_0_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_1_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.1.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_1_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.1.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_1_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.1.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_1_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.1.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_1_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.1.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_1_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_1_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_9_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.9.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_9_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.9.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_9_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.9.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_9_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.9.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_9_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.9.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_9_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_9_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_10_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.10.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_10_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.10.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_10_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.10.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_10_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.10.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_10_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.10.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_10_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_10_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_99_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.99.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_99_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.99.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_99_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.99.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_99_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.99.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_99_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.99.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_99_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_99_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_100_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_100_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_100_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_100_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_100_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_100_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_100_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_999_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_999_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_999_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_999_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_999_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_999_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_100_999_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_0_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.0.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_0_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.0.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_0_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.0.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_0_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.0.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_0_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.0.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_0_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_0_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_1_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.1.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_1_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.1.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_1_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.1.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_1_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.1.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_1_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.1.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_1_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_1_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_9_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.9.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_9_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.9.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_9_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.9.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_9_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.9.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_9_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.9.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_9_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_9_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_10_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.10.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_10_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.10.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_10_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.10.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_10_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.10.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_10_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.10.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_10_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_10_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_99_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.99.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_99_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.99.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_99_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.99.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_99_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.99.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_99_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.99.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_99_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_99_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_100_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_100_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_100_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_100_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_100_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_100_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_100_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_999_0 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_999_1 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_999_9 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_999_10 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_999_99 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_999_100 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_prev_2_comb_999_999_999 () {
    ret=$(../get_prev_next_version.sh 2 prev 999.999.999)
    test "$ret" = "$err_field_size"
}


################
## Backward 3 ##
################

it_goes_prev_3_comb_0_0_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.0.0)
    test "$ret" = "master"
}

it_goes_prev_3_comb_0_0_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.0.1)
    test "$ret" = "master"
}

it_goes_prev_3_comb_0_0_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.0.9)
    test "$ret" = "0.0.8"
}

it_goes_prev_3_comb_0_0_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.0.10)
    test "$ret" = "0.0.9"
}

it_goes_prev_3_comb_0_0_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.0.99)
    test "$ret" = "0.0.98"
}

it_goes_prev_3_comb_0_0_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.0.100)
    test "$ret" = "0.0.99"
}

it_goes_prev_3_comb_0_0_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.0.999)
    test "$ret" = "0.0.998"
}

it_goes_prev_3_comb_0_1_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.1.0)
    test "$ret" = "0.0.999"
}

it_goes_prev_3_comb_0_1_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.1.1)
    test "$ret" = "0.1.0"
}

it_goes_prev_3_comb_0_1_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.1.9)
    test "$ret" = "0.1.8"
}

it_goes_prev_3_comb_0_1_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.1.10)
    test "$ret" = "0.1.9"
}

it_goes_prev_3_comb_0_1_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.1.99)
    test "$ret" = "0.1.98"
}

it_goes_prev_3_comb_0_1_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.1.100)
    test "$ret" = "0.1.99"
}

it_goes_prev_3_comb_0_1_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.1.999)
    test "$ret" = "0.1.998"
}

it_goes_prev_3_comb_0_9_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.9.0)
    test "$ret" = "0.8.999"
}

it_goes_prev_3_comb_0_9_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.9.1)
    test "$ret" = "0.9.0"
}

it_goes_prev_3_comb_0_9_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.9.9)
    test "$ret" = "0.9.8"
}

it_goes_prev_3_comb_0_9_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.9.10)
    test "$ret" = "0.9.9"
}

it_goes_prev_3_comb_0_9_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.9.99)
    test "$ret" = "0.9.98"
}

it_goes_prev_3_comb_0_9_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.9.100)
    test "$ret" = "0.9.99"
}

it_goes_prev_3_comb_0_9_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.9.999)
    test "$ret" = "0.9.998"
}

it_goes_prev_3_comb_0_10_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.10.0)
    test "$ret" = "0.9.999"
}

it_goes_prev_3_comb_0_10_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.10.1)
    test "$ret" = "0.10.0"
}

it_goes_prev_3_comb_0_10_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.10.9)
    test "$ret" = "0.10.8"
}

it_goes_prev_3_comb_0_10_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.10.10)
    test "$ret" = "0.10.9"
}

it_goes_prev_3_comb_0_10_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.10.99)
    test "$ret" = "0.10.98"
}

it_goes_prev_3_comb_0_10_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.10.100)
    test "$ret" = "0.10.99"
}

it_goes_prev_3_comb_0_10_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.10.999)
    test "$ret" = "0.10.998"
}

it_goes_prev_3_comb_0_99_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.99.0)
    test "$ret" = "0.98.999"
}

it_goes_prev_3_comb_0_99_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.99.1)
    test "$ret" = "0.99.0"
}

it_goes_prev_3_comb_0_99_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.99.9)
    test "$ret" = "0.99.8"
}

it_goes_prev_3_comb_0_99_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.99.10)
    test "$ret" = "0.99.9"
}

it_goes_prev_3_comb_0_99_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.99.99)
    test "$ret" = "0.99.98"
}

it_goes_prev_3_comb_0_99_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.99.100)
    test "$ret" = "0.99.99"
}

it_goes_prev_3_comb_0_99_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.99.999)
    test "$ret" = "0.99.998"
}

it_goes_prev_3_comb_0_100_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.100.0)
    test "$ret" = "0.99.999"
}

it_goes_prev_3_comb_0_100_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.100.1)
    test "$ret" = "0.100.0"
}

it_goes_prev_3_comb_0_100_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.100.9)
    test "$ret" = "0.100.8"
}

it_goes_prev_3_comb_0_100_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.100.10)
    test "$ret" = "0.100.9"
}

it_goes_prev_3_comb_0_100_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.100.99)
    test "$ret" = "0.100.98"
}

it_goes_prev_3_comb_0_100_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.100.100)
    test "$ret" = "0.100.99"
}

it_goes_prev_3_comb_0_100_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.100.999)
    test "$ret" = "0.100.998"
}

it_goes_prev_3_comb_0_999_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.999.0)
    test "$ret" = "0.998.999"
}

it_goes_prev_3_comb_0_999_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.999.1)
    test "$ret" = "0.999.0"
}

it_goes_prev_3_comb_0_999_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.999.9)
    test "$ret" = "0.999.8"
}

it_goes_prev_3_comb_0_999_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.999.10)
    test "$ret" = "0.999.9"
}

it_goes_prev_3_comb_0_999_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.999.99)
    test "$ret" = "0.999.98"
}

it_goes_prev_3_comb_0_999_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.999.100)
    test "$ret" = "0.999.99"
}

it_goes_prev_3_comb_0_999_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.999.999)
    test "$ret" = "0.999.998"
}

it_goes_prev_3_comb_1_0_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.0.0)
    test "$ret" = "0.999.999"
}

it_goes_prev_3_comb_1_0_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.0.1)
    test "$ret" = "1.0.0"
}

it_goes_prev_3_comb_1_0_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.0.9)
    test "$ret" = "1.0.8"
}

it_goes_prev_3_comb_1_0_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.0.10)
    test "$ret" = "1.0.9"
}

it_goes_prev_3_comb_1_0_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.0.99)
    test "$ret" = "1.0.98"
}

it_goes_prev_3_comb_1_0_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.0.100)
    test "$ret" = "1.0.99"
}

it_goes_prev_3_comb_1_0_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.0.999)
    test "$ret" = "1.0.998"
}

it_goes_prev_3_comb_1_1_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.1.0)
    test "$ret" = "1.0.999"
}

it_goes_prev_3_comb_1_1_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.1.1)
    test "$ret" = "1.1.0"
}

it_goes_prev_3_comb_1_1_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.1.9)
    test "$ret" = "1.1.8"
}

it_goes_prev_3_comb_1_1_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.1.10)
    test "$ret" = "1.1.9"
}

it_goes_prev_3_comb_1_1_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.1.99)
    test "$ret" = "1.1.98"
}

it_goes_prev_3_comb_1_1_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.1.100)
    test "$ret" = "1.1.99"
}

it_goes_prev_3_comb_1_1_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.1.999)
    test "$ret" = "1.1.998"
}

it_goes_prev_3_comb_1_9_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.9.0)
    test "$ret" = "1.8.999"
}

it_goes_prev_3_comb_1_9_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.9.1)
    test "$ret" = "1.9.0"
}

it_goes_prev_3_comb_1_9_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.9.9)
    test "$ret" = "1.9.8"
}

it_goes_prev_3_comb_1_9_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.9.10)
    test "$ret" = "1.9.9"
}

it_goes_prev_3_comb_1_9_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.9.99)
    test "$ret" = "1.9.98"
}

it_goes_prev_3_comb_1_9_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.9.100)
    test "$ret" = "1.9.99"
}

it_goes_prev_3_comb_1_9_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.9.999)
    test "$ret" = "1.9.998"
}

it_goes_prev_3_comb_1_10_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.10.0)
    test "$ret" = "1.9.999"
}

it_goes_prev_3_comb_1_10_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.10.1)
    test "$ret" = "1.10.0"
}

it_goes_prev_3_comb_1_10_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.10.9)
    test "$ret" = "1.10.8"
}

it_goes_prev_3_comb_1_10_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.10.10)
    test "$ret" = "1.10.9"
}

it_goes_prev_3_comb_1_10_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.10.99)
    test "$ret" = "1.10.98"
}

it_goes_prev_3_comb_1_10_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.10.100)
    test "$ret" = "1.10.99"
}

it_goes_prev_3_comb_1_10_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.10.999)
    test "$ret" = "1.10.998"
}

it_goes_prev_3_comb_1_99_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.99.0)
    test "$ret" = "1.98.999"
}

it_goes_prev_3_comb_1_99_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.99.1)
    test "$ret" = "1.99.0"
}

it_goes_prev_3_comb_1_99_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.99.9)
    test "$ret" = "1.99.8"
}

it_goes_prev_3_comb_1_99_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.99.10)
    test "$ret" = "1.99.9"
}

it_goes_prev_3_comb_1_99_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.99.99)
    test "$ret" = "1.99.98"
}

it_goes_prev_3_comb_1_99_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.99.100)
    test "$ret" = "1.99.99"
}

it_goes_prev_3_comb_1_99_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.99.999)
    test "$ret" = "1.99.998"
}

it_goes_prev_3_comb_1_100_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.100.0)
    test "$ret" = "1.99.999"
}

it_goes_prev_3_comb_1_100_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.100.1)
    test "$ret" = "1.100.0"
}

it_goes_prev_3_comb_1_100_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.100.9)
    test "$ret" = "1.100.8"
}

it_goes_prev_3_comb_1_100_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.100.10)
    test "$ret" = "1.100.9"
}

it_goes_prev_3_comb_1_100_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.100.99)
    test "$ret" = "1.100.98"
}

it_goes_prev_3_comb_1_100_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.100.100)
    test "$ret" = "1.100.99"
}

it_goes_prev_3_comb_1_100_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.100.999)
    test "$ret" = "1.100.998"
}

it_goes_prev_3_comb_1_999_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.999.0)
    test "$ret" = "1.998.999"
}

it_goes_prev_3_comb_1_999_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.999.1)
    test "$ret" = "1.999.0"
}

it_goes_prev_3_comb_1_999_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.999.9)
    test "$ret" = "1.999.8"
}

it_goes_prev_3_comb_1_999_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.999.10)
    test "$ret" = "1.999.9"
}

it_goes_prev_3_comb_1_999_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.999.99)
    test "$ret" = "1.999.98"
}

it_goes_prev_3_comb_1_999_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.999.100)
    test "$ret" = "1.999.99"
}

it_goes_prev_3_comb_1_999_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 1.999.999)
    test "$ret" = "1.999.998"
}

it_goes_prev_3_comb_9_0_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.0.0)
    test "$ret" = "8.999.999"
}

it_goes_prev_3_comb_9_0_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.0.1)
    test "$ret" = "9.0.0"
}

it_goes_prev_3_comb_9_0_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.0.9)
    test "$ret" = "9.0.8"
}

it_goes_prev_3_comb_9_0_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.0.10)
    test "$ret" = "9.0.9"
}

it_goes_prev_3_comb_9_0_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.0.99)
    test "$ret" = "9.0.98"
}

it_goes_prev_3_comb_9_0_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.0.100)
    test "$ret" = "9.0.99"
}

it_goes_prev_3_comb_9_0_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.0.999)
    test "$ret" = "9.0.998"
}

it_goes_prev_3_comb_9_1_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.1.0)
    test "$ret" = "9.0.999"
}

it_goes_prev_3_comb_9_1_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.1.1)
    test "$ret" = "9.1.0"
}

it_goes_prev_3_comb_9_1_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.1.9)
    test "$ret" = "9.1.8"
}

it_goes_prev_3_comb_9_1_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.1.10)
    test "$ret" = "9.1.9"
}

it_goes_prev_3_comb_9_1_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.1.99)
    test "$ret" = "9.1.98"
}

it_goes_prev_3_comb_9_1_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.1.100)
    test "$ret" = "9.1.99"
}

it_goes_prev_3_comb_9_1_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.1.999)
    test "$ret" = "9.1.998"
}

it_goes_prev_3_comb_9_9_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.9.0)
    test "$ret" = "9.8.999"
}

it_goes_prev_3_comb_9_9_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.9.1)
    test "$ret" = "9.9.0"
}

it_goes_prev_3_comb_9_9_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.9.9)
    test "$ret" = "9.9.8"
}

it_goes_prev_3_comb_9_9_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.9.10)
    test "$ret" = "9.9.9"
}

it_goes_prev_3_comb_9_9_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.9.99)
    test "$ret" = "9.9.98"
}

it_goes_prev_3_comb_9_9_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.9.100)
    test "$ret" = "9.9.99"
}

it_goes_prev_3_comb_9_9_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.9.999)
    test "$ret" = "9.9.998"
}

it_goes_prev_3_comb_9_10_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.10.0)
    test "$ret" = "9.9.999"
}

it_goes_prev_3_comb_9_10_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.10.1)
    test "$ret" = "9.10.0"
}

it_goes_prev_3_comb_9_10_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.10.9)
    test "$ret" = "9.10.8"
}

it_goes_prev_3_comb_9_10_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.10.10)
    test "$ret" = "9.10.9"
}

it_goes_prev_3_comb_9_10_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.10.99)
    test "$ret" = "9.10.98"
}

it_goes_prev_3_comb_9_10_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.10.100)
    test "$ret" = "9.10.99"
}

it_goes_prev_3_comb_9_10_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.10.999)
    test "$ret" = "9.10.998"
}

it_goes_prev_3_comb_9_99_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.99.0)
    test "$ret" = "9.98.999"
}

it_goes_prev_3_comb_9_99_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.99.1)
    test "$ret" = "9.99.0"
}

it_goes_prev_3_comb_9_99_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.99.9)
    test "$ret" = "9.99.8"
}

it_goes_prev_3_comb_9_99_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.99.10)
    test "$ret" = "9.99.9"
}

it_goes_prev_3_comb_9_99_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.99.99)
    test "$ret" = "9.99.98"
}

it_goes_prev_3_comb_9_99_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.99.100)
    test "$ret" = "9.99.99"
}

it_goes_prev_3_comb_9_99_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.99.999)
    test "$ret" = "9.99.998"
}

it_goes_prev_3_comb_9_100_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.100.0)
    test "$ret" = "9.99.999"
}

it_goes_prev_3_comb_9_100_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.100.1)
    test "$ret" = "9.100.0"
}

it_goes_prev_3_comb_9_100_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.100.9)
    test "$ret" = "9.100.8"
}

it_goes_prev_3_comb_9_100_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.100.10)
    test "$ret" = "9.100.9"
}

it_goes_prev_3_comb_9_100_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.100.99)
    test "$ret" = "9.100.98"
}

it_goes_prev_3_comb_9_100_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.100.100)
    test "$ret" = "9.100.99"
}

it_goes_prev_3_comb_9_100_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.100.999)
    test "$ret" = "9.100.998"
}

it_goes_prev_3_comb_9_999_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.999.0)
    test "$ret" = "9.998.999"
}

it_goes_prev_3_comb_9_999_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.999.1)
    test "$ret" = "9.999.0"
}

it_goes_prev_3_comb_9_999_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.999.9)
    test "$ret" = "9.999.8"
}

it_goes_prev_3_comb_9_999_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.999.10)
    test "$ret" = "9.999.9"
}

it_goes_prev_3_comb_9_999_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.999.99)
    test "$ret" = "9.999.98"
}

it_goes_prev_3_comb_9_999_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.999.100)
    test "$ret" = "9.999.99"
}

it_goes_prev_3_comb_9_999_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 9.999.999)
    test "$ret" = "9.999.998"
}

it_goes_prev_3_comb_10_0_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.0.0)
    test "$ret" = "9.999.999"
}

it_goes_prev_3_comb_10_0_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.0.1)
    test "$ret" = "10.0.0"
}

it_goes_prev_3_comb_10_0_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.0.9)
    test "$ret" = "10.0.8"
}

it_goes_prev_3_comb_10_0_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.0.10)
    test "$ret" = "10.0.9"
}

it_goes_prev_3_comb_10_0_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.0.99)
    test "$ret" = "10.0.98"
}

it_goes_prev_3_comb_10_0_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.0.100)
    test "$ret" = "10.0.99"
}

it_goes_prev_3_comb_10_0_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.0.999)
    test "$ret" = "10.0.998"
}

it_goes_prev_3_comb_10_1_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.1.0)
    test "$ret" = "10.0.999"
}

it_goes_prev_3_comb_10_1_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.1.1)
    test "$ret" = "10.1.0"
}

it_goes_prev_3_comb_10_1_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.1.9)
    test "$ret" = "10.1.8"
}

it_goes_prev_3_comb_10_1_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.1.10)
    test "$ret" = "10.1.9"
}

it_goes_prev_3_comb_10_1_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.1.99)
    test "$ret" = "10.1.98"
}

it_goes_prev_3_comb_10_1_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.1.100)
    test "$ret" = "10.1.99"
}

it_goes_prev_3_comb_10_1_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.1.999)
    test "$ret" = "10.1.998"
}

it_goes_prev_3_comb_10_9_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.9.0)
    test "$ret" = "10.8.999"
}

it_goes_prev_3_comb_10_9_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.9.1)
    test "$ret" = "10.9.0"
}

it_goes_prev_3_comb_10_9_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.9.9)
    test "$ret" = "10.9.8"
}

it_goes_prev_3_comb_10_9_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.9.10)
    test "$ret" = "10.9.9"
}

it_goes_prev_3_comb_10_9_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.9.99)
    test "$ret" = "10.9.98"
}

it_goes_prev_3_comb_10_9_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.9.100)
    test "$ret" = "10.9.99"
}

it_goes_prev_3_comb_10_9_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.9.999)
    test "$ret" = "10.9.998"
}

it_goes_prev_3_comb_10_10_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.10.0)
    test "$ret" = "10.9.999"
}

it_goes_prev_3_comb_10_10_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.10.1)
    test "$ret" = "10.10.0"
}

it_goes_prev_3_comb_10_10_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.10.9)
    test "$ret" = "10.10.8"
}

it_goes_prev_3_comb_10_10_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.10.10)
    test "$ret" = "10.10.9"
}

it_goes_prev_3_comb_10_10_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.10.99)
    test "$ret" = "10.10.98"
}

it_goes_prev_3_comb_10_10_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.10.100)
    test "$ret" = "10.10.99"
}

it_goes_prev_3_comb_10_10_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.10.999)
    test "$ret" = "10.10.998"
}

it_goes_prev_3_comb_10_99_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.99.0)
    test "$ret" = "10.98.999"
}

it_goes_prev_3_comb_10_99_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.99.1)
    test "$ret" = "10.99.0"
}

it_goes_prev_3_comb_10_99_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.99.9)
    test "$ret" = "10.99.8"
}

it_goes_prev_3_comb_10_99_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.99.10)
    test "$ret" = "10.99.9"
}

it_goes_prev_3_comb_10_99_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.99.99)
    test "$ret" = "10.99.98"
}

it_goes_prev_3_comb_10_99_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.99.100)
    test "$ret" = "10.99.99"
}

it_goes_prev_3_comb_10_99_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.99.999)
    test "$ret" = "10.99.998"
}

it_goes_prev_3_comb_10_100_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.100.0)
    test "$ret" = "10.99.999"
}

it_goes_prev_3_comb_10_100_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.100.1)
    test "$ret" = "10.100.0"
}

it_goes_prev_3_comb_10_100_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.100.9)
    test "$ret" = "10.100.8"
}

it_goes_prev_3_comb_10_100_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.100.10)
    test "$ret" = "10.100.9"
}

it_goes_prev_3_comb_10_100_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.100.99)
    test "$ret" = "10.100.98"
}

it_goes_prev_3_comb_10_100_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.100.100)
    test "$ret" = "10.100.99"
}

it_goes_prev_3_comb_10_100_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.100.999)
    test "$ret" = "10.100.998"
}

it_goes_prev_3_comb_10_999_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.999.0)
    test "$ret" = "10.998.999"
}

it_goes_prev_3_comb_10_999_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.999.1)
    test "$ret" = "10.999.0"
}

it_goes_prev_3_comb_10_999_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.999.9)
    test "$ret" = "10.999.8"
}

it_goes_prev_3_comb_10_999_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.999.10)
    test "$ret" = "10.999.9"
}

it_goes_prev_3_comb_10_999_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.999.99)
    test "$ret" = "10.999.98"
}

it_goes_prev_3_comb_10_999_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.999.100)
    test "$ret" = "10.999.99"
}

it_goes_prev_3_comb_10_999_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 10.999.999)
    test "$ret" = "10.999.998"
}

it_goes_prev_3_comb_99_0_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.0.0)
    test "$ret" = "98.999.999"
}

it_goes_prev_3_comb_99_0_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.0.1)
    test "$ret" = "99.0.0"
}

it_goes_prev_3_comb_99_0_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.0.9)
    test "$ret" = "99.0.8"
}

it_goes_prev_3_comb_99_0_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.0.10)
    test "$ret" = "99.0.9"
}

it_goes_prev_3_comb_99_0_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.0.99)
    test "$ret" = "99.0.98"
}

it_goes_prev_3_comb_99_0_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.0.100)
    test "$ret" = "99.0.99"
}

it_goes_prev_3_comb_99_0_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.0.999)
    test "$ret" = "99.0.998"
}

it_goes_prev_3_comb_99_1_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.1.0)
    test "$ret" = "99.0.999"
}

it_goes_prev_3_comb_99_1_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.1.1)
    test "$ret" = "99.1.0"
}

it_goes_prev_3_comb_99_1_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.1.9)
    test "$ret" = "99.1.8"
}

it_goes_prev_3_comb_99_1_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.1.10)
    test "$ret" = "99.1.9"
}

it_goes_prev_3_comb_99_1_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.1.99)
    test "$ret" = "99.1.98"
}

it_goes_prev_3_comb_99_1_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.1.100)
    test "$ret" = "99.1.99"
}

it_goes_prev_3_comb_99_1_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.1.999)
    test "$ret" = "99.1.998"
}

it_goes_prev_3_comb_99_9_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.9.0)
    test "$ret" = "99.8.999"
}

it_goes_prev_3_comb_99_9_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.9.1)
    test "$ret" = "99.9.0"
}

it_goes_prev_3_comb_99_9_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.9.9)
    test "$ret" = "99.9.8"
}

it_goes_prev_3_comb_99_9_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.9.10)
    test "$ret" = "99.9.9"
}

it_goes_prev_3_comb_99_9_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.9.99)
    test "$ret" = "99.9.98"
}

it_goes_prev_3_comb_99_9_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.9.100)
    test "$ret" = "99.9.99"
}

it_goes_prev_3_comb_99_9_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.9.999)
    test "$ret" = "99.9.998"
}

it_goes_prev_3_comb_99_10_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.10.0)
    test "$ret" = "99.9.999"
}

it_goes_prev_3_comb_99_10_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.10.1)
    test "$ret" = "99.10.0"
}

it_goes_prev_3_comb_99_10_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.10.9)
    test "$ret" = "99.10.8"
}

it_goes_prev_3_comb_99_10_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.10.10)
    test "$ret" = "99.10.9"
}

it_goes_prev_3_comb_99_10_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.10.99)
    test "$ret" = "99.10.98"
}

it_goes_prev_3_comb_99_10_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.10.100)
    test "$ret" = "99.10.99"
}

it_goes_prev_3_comb_99_10_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.10.999)
    test "$ret" = "99.10.998"
}

it_goes_prev_3_comb_99_99_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.99.0)
    test "$ret" = "99.98.999"
}

it_goes_prev_3_comb_99_99_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.99.1)
    test "$ret" = "99.99.0"
}

it_goes_prev_3_comb_99_99_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.99.9)
    test "$ret" = "99.99.8"
}

it_goes_prev_3_comb_99_99_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.99.10)
    test "$ret" = "99.99.9"
}

it_goes_prev_3_comb_99_99_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.99.99)
    test "$ret" = "99.99.98"
}

it_goes_prev_3_comb_99_99_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.99.100)
    test "$ret" = "99.99.99"
}

it_goes_prev_3_comb_99_99_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.99.999)
    test "$ret" = "99.99.998"
}

it_goes_prev_3_comb_99_100_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.100.0)
    test "$ret" = "99.99.999"
}

it_goes_prev_3_comb_99_100_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.100.1)
    test "$ret" = "99.100.0"
}

it_goes_prev_3_comb_99_100_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.100.9)
    test "$ret" = "99.100.8"
}

it_goes_prev_3_comb_99_100_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.100.10)
    test "$ret" = "99.100.9"
}

it_goes_prev_3_comb_99_100_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.100.99)
    test "$ret" = "99.100.98"
}

it_goes_prev_3_comb_99_100_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.100.100)
    test "$ret" = "99.100.99"
}

it_goes_prev_3_comb_99_100_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.100.999)
    test "$ret" = "99.100.998"
}

it_goes_prev_3_comb_99_999_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.999.0)
    test "$ret" = "99.998.999"
}

it_goes_prev_3_comb_99_999_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.999.1)
    test "$ret" = "99.999.0"
}

it_goes_prev_3_comb_99_999_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.999.9)
    test "$ret" = "99.999.8"
}

it_goes_prev_3_comb_99_999_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.999.10)
    test "$ret" = "99.999.9"
}

it_goes_prev_3_comb_99_999_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.999.99)
    test "$ret" = "99.999.98"
}

it_goes_prev_3_comb_99_999_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.999.100)
    test "$ret" = "99.999.99"
}

it_goes_prev_3_comb_99_999_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 99.999.999)
    test "$ret" = "99.999.998"
}

it_goes_prev_3_comb_100_0_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.0.0)
    test "$ret" = "99.999.999"
}

it_goes_prev_3_comb_100_0_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.0.1)
    test "$ret" = "100.0.0"
}

it_goes_prev_3_comb_100_0_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.0.9)
    test "$ret" = "100.0.8"
}

it_goes_prev_3_comb_100_0_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.0.10)
    test "$ret" = "100.0.9"
}

it_goes_prev_3_comb_100_0_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.0.99)
    test "$ret" = "100.0.98"
}

it_goes_prev_3_comb_100_0_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.0.100)
    test "$ret" = "100.0.99"
}

it_goes_prev_3_comb_100_0_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.0.999)
    test "$ret" = "100.0.998"
}

it_goes_prev_3_comb_100_1_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.1.0)
    test "$ret" = "100.0.999"
}

it_goes_prev_3_comb_100_1_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.1.1)
    test "$ret" = "100.1.0"
}

it_goes_prev_3_comb_100_1_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.1.9)
    test "$ret" = "100.1.8"
}

it_goes_prev_3_comb_100_1_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.1.10)
    test "$ret" = "100.1.9"
}

it_goes_prev_3_comb_100_1_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.1.99)
    test "$ret" = "100.1.98"
}

it_goes_prev_3_comb_100_1_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.1.100)
    test "$ret" = "100.1.99"
}

it_goes_prev_3_comb_100_1_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.1.999)
    test "$ret" = "100.1.998"
}

it_goes_prev_3_comb_100_9_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.9.0)
    test "$ret" = "100.8.999"
}

it_goes_prev_3_comb_100_9_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.9.1)
    test "$ret" = "100.9.0"
}

it_goes_prev_3_comb_100_9_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.9.9)
    test "$ret" = "100.9.8"
}

it_goes_prev_3_comb_100_9_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.9.10)
    test "$ret" = "100.9.9"
}

it_goes_prev_3_comb_100_9_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.9.99)
    test "$ret" = "100.9.98"
}

it_goes_prev_3_comb_100_9_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.9.100)
    test "$ret" = "100.9.99"
}

it_goes_prev_3_comb_100_9_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.9.999)
    test "$ret" = "100.9.998"
}

it_goes_prev_3_comb_100_10_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.10.0)
    test "$ret" = "100.9.999"
}

it_goes_prev_3_comb_100_10_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.10.1)
    test "$ret" = "100.10.0"
}

it_goes_prev_3_comb_100_10_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.10.9)
    test "$ret" = "100.10.8"
}

it_goes_prev_3_comb_100_10_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.10.10)
    test "$ret" = "100.10.9"
}

it_goes_prev_3_comb_100_10_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.10.99)
    test "$ret" = "100.10.98"
}

it_goes_prev_3_comb_100_10_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.10.100)
    test "$ret" = "100.10.99"
}

it_goes_prev_3_comb_100_10_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.10.999)
    test "$ret" = "100.10.998"
}

it_goes_prev_3_comb_100_99_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.99.0)
    test "$ret" = "100.98.999"
}

it_goes_prev_3_comb_100_99_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.99.1)
    test "$ret" = "100.99.0"
}

it_goes_prev_3_comb_100_99_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.99.9)
    test "$ret" = "100.99.8"
}

it_goes_prev_3_comb_100_99_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.99.10)
    test "$ret" = "100.99.9"
}

it_goes_prev_3_comb_100_99_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.99.99)
    test "$ret" = "100.99.98"
}

it_goes_prev_3_comb_100_99_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.99.100)
    test "$ret" = "100.99.99"
}

it_goes_prev_3_comb_100_99_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.99.999)
    test "$ret" = "100.99.998"
}

it_goes_prev_3_comb_100_100_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.100.0)
    test "$ret" = "100.99.999"
}

it_goes_prev_3_comb_100_100_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.100.1)
    test "$ret" = "100.100.0"
}

it_goes_prev_3_comb_100_100_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.100.9)
    test "$ret" = "100.100.8"
}

it_goes_prev_3_comb_100_100_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.100.10)
    test "$ret" = "100.100.9"
}

it_goes_prev_3_comb_100_100_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.100.99)
    test "$ret" = "100.100.98"
}

it_goes_prev_3_comb_100_100_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.100.100)
    test "$ret" = "100.100.99"
}

it_goes_prev_3_comb_100_100_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.100.999)
    test "$ret" = "100.100.998"
}

it_goes_prev_3_comb_100_999_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.999.0)
    test "$ret" = "100.998.999"
}

it_goes_prev_3_comb_100_999_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.999.1)
    test "$ret" = "100.999.0"
}

it_goes_prev_3_comb_100_999_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.999.9)
    test "$ret" = "100.999.8"
}

it_goes_prev_3_comb_100_999_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.999.10)
    test "$ret" = "100.999.9"
}

it_goes_prev_3_comb_100_999_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.999.99)
    test "$ret" = "100.999.98"
}

it_goes_prev_3_comb_100_999_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.999.100)
    test "$ret" = "100.999.99"
}

it_goes_prev_3_comb_100_999_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 100.999.999)
    test "$ret" = "100.999.998"
}

it_goes_prev_3_comb_999_0_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.0.0)
    test "$ret" = "998.999.999"
}

it_goes_prev_3_comb_999_0_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.0.1)
    test "$ret" = "999.0.0"
}

it_goes_prev_3_comb_999_0_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.0.9)
    test "$ret" = "999.0.8"
}

it_goes_prev_3_comb_999_0_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.0.10)
    test "$ret" = "999.0.9"
}

it_goes_prev_3_comb_999_0_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.0.99)
    test "$ret" = "999.0.98"
}

it_goes_prev_3_comb_999_0_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.0.100)
    test "$ret" = "999.0.99"
}

it_goes_prev_3_comb_999_0_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.0.999)
    test "$ret" = "999.0.998"
}

it_goes_prev_3_comb_999_1_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.1.0)
    test "$ret" = "999.0.999"
}

it_goes_prev_3_comb_999_1_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.1.1)
    test "$ret" = "999.1.0"
}

it_goes_prev_3_comb_999_1_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.1.9)
    test "$ret" = "999.1.8"
}

it_goes_prev_3_comb_999_1_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.1.10)
    test "$ret" = "999.1.9"
}

it_goes_prev_3_comb_999_1_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.1.99)
    test "$ret" = "999.1.98"
}

it_goes_prev_3_comb_999_1_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.1.100)
    test "$ret" = "999.1.99"
}

it_goes_prev_3_comb_999_1_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.1.999)
    test "$ret" = "999.1.998"
}

it_goes_prev_3_comb_999_9_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.9.0)
    test "$ret" = "999.8.999"
}

it_goes_prev_3_comb_999_9_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.9.1)
    test "$ret" = "999.9.0"
}

it_goes_prev_3_comb_999_9_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.9.9)
    test "$ret" = "999.9.8"
}

it_goes_prev_3_comb_999_9_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.9.10)
    test "$ret" = "999.9.9"
}

it_goes_prev_3_comb_999_9_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.9.99)
    test "$ret" = "999.9.98"
}

it_goes_prev_3_comb_999_9_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.9.100)
    test "$ret" = "999.9.99"
}

it_goes_prev_3_comb_999_9_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.9.999)
    test "$ret" = "999.9.998"
}

it_goes_prev_3_comb_999_10_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.10.0)
    test "$ret" = "999.9.999"
}

it_goes_prev_3_comb_999_10_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.10.1)
    test "$ret" = "999.10.0"
}

it_goes_prev_3_comb_999_10_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.10.9)
    test "$ret" = "999.10.8"
}

it_goes_prev_3_comb_999_10_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.10.10)
    test "$ret" = "999.10.9"
}

it_goes_prev_3_comb_999_10_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.10.99)
    test "$ret" = "999.10.98"
}

it_goes_prev_3_comb_999_10_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.10.100)
    test "$ret" = "999.10.99"
}

it_goes_prev_3_comb_999_10_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.10.999)
    test "$ret" = "999.10.998"
}

it_goes_prev_3_comb_999_99_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.99.0)
    test "$ret" = "999.98.999"
}

it_goes_prev_3_comb_999_99_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.99.1)
    test "$ret" = "999.99.0"
}

it_goes_prev_3_comb_999_99_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.99.9)
    test "$ret" = "999.99.8"
}

it_goes_prev_3_comb_999_99_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.99.10)
    test "$ret" = "999.99.9"
}

it_goes_prev_3_comb_999_99_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.99.99)
    test "$ret" = "999.99.98"
}

it_goes_prev_3_comb_999_99_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.99.100)
    test "$ret" = "999.99.99"
}

it_goes_prev_3_comb_999_99_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.99.999)
    test "$ret" = "999.99.998"
}

it_goes_prev_3_comb_999_100_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.100.0)
    test "$ret" = "999.99.999"
}

it_goes_prev_3_comb_999_100_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.100.1)
    test "$ret" = "999.100.0"
}

it_goes_prev_3_comb_999_100_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.100.9)
    test "$ret" = "999.100.8"
}

it_goes_prev_3_comb_999_100_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.100.10)
    test "$ret" = "999.100.9"
}

it_goes_prev_3_comb_999_100_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.100.99)
    test "$ret" = "999.100.98"
}

it_goes_prev_3_comb_999_100_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.100.100)
    test "$ret" = "999.100.99"
}

it_goes_prev_3_comb_999_100_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.100.999)
    test "$ret" = "999.100.998"
}

it_goes_prev_3_comb_999_999_0 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.999.0)
    test "$ret" = "999.998.999"
}

it_goes_prev_3_comb_999_999_1 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.999.1)
    test "$ret" = "999.999.0"
}

it_goes_prev_3_comb_999_999_9 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.999.9)
    test "$ret" = "999.999.8"
}

it_goes_prev_3_comb_999_999_10 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.999.10)
    test "$ret" = "999.999.9"
}

it_goes_prev_3_comb_999_999_99 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.999.99)
    test "$ret" = "999.999.98"
}

it_goes_prev_3_comb_999_999_100 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.999.100)
    test "$ret" = "999.999.99"
}

it_goes_prev_3_comb_999_999_999 () {
    ret=$(../get_prev_next_version.sh 3 prev 999.999.999)
    test "$ret" = "999.999.998"
}


###############
## Forward 1 ##
###############

it_goes_next_1_comb_0_0_0 () {
    ret=$(../get_prev_next_version.sh 1 next 0.0.0)
    test "$ret" = "0.0.1"
}

it_goes_next_1_comb_0_0_1 () {
    ret=$(../get_prev_next_version.sh 1 next 0.0.1)
    test "$ret" = "0.0.2"
}

it_goes_next_1_comb_0_0_9 () {
    ret=$(../get_prev_next_version.sh 1 next 0.0.9)
    test "$ret" = "0.1.0"
}

it_goes_next_1_comb_0_0_10 () {
    ret=$(../get_prev_next_version.sh 1 next 0.0.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_0_99 () {
    ret=$(../get_prev_next_version.sh 1 next 0.0.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_0_100 () {
    ret=$(../get_prev_next_version.sh 1 next 0.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_0_999 () {
    ret=$(../get_prev_next_version.sh 1 next 0.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_1_0 () {
    ret=$(../get_prev_next_version.sh 1 next 0.1.0)
    test "$ret" = "0.1.1"
}

it_goes_next_1_comb_0_1_1 () {
    ret=$(../get_prev_next_version.sh 1 next 0.1.1)
    test "$ret" = "0.1.2"
}

it_goes_next_1_comb_0_1_9 () {
    ret=$(../get_prev_next_version.sh 1 next 0.1.9)
    test "$ret" = "0.2.0"
}

it_goes_next_1_comb_0_1_10 () {
    ret=$(../get_prev_next_version.sh 1 next 0.1.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_1_99 () {
    ret=$(../get_prev_next_version.sh 1 next 0.1.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_1_100 () {
    ret=$(../get_prev_next_version.sh 1 next 0.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_1_999 () {
    ret=$(../get_prev_next_version.sh 1 next 0.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_9_0 () {
    ret=$(../get_prev_next_version.sh 1 next 0.9.0)
    test "$ret" = "0.9.1"
}

it_goes_next_1_comb_0_9_1 () {
    ret=$(../get_prev_next_version.sh 1 next 0.9.1)
    test "$ret" = "0.9.2"
}

it_goes_next_1_comb_0_9_9 () {
    ret=$(../get_prev_next_version.sh 1 next 0.9.9)
    test "$ret" = "1.0.0"
}

it_goes_next_1_comb_0_9_10 () {
    ret=$(../get_prev_next_version.sh 1 next 0.9.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_9_99 () {
    ret=$(../get_prev_next_version.sh 1 next 0.9.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_9_100 () {
    ret=$(../get_prev_next_version.sh 1 next 0.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_9_999 () {
    ret=$(../get_prev_next_version.sh 1 next 0.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_10_0 () {
    ret=$(../get_prev_next_version.sh 1 next 0.10.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_10_1 () {
    ret=$(../get_prev_next_version.sh 1 next 0.10.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_10_9 () {
    ret=$(../get_prev_next_version.sh 1 next 0.10.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_10_10 () {
    ret=$(../get_prev_next_version.sh 1 next 0.10.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_10_99 () {
    ret=$(../get_prev_next_version.sh 1 next 0.10.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_10_100 () {
    ret=$(../get_prev_next_version.sh 1 next 0.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_10_999 () {
    ret=$(../get_prev_next_version.sh 1 next 0.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_99_0 () {
    ret=$(../get_prev_next_version.sh 1 next 0.99.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_99_1 () {
    ret=$(../get_prev_next_version.sh 1 next 0.99.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_99_9 () {
    ret=$(../get_prev_next_version.sh 1 next 0.99.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_99_10 () {
    ret=$(../get_prev_next_version.sh 1 next 0.99.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_99_99 () {
    ret=$(../get_prev_next_version.sh 1 next 0.99.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_99_100 () {
    ret=$(../get_prev_next_version.sh 1 next 0.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_99_999 () {
    ret=$(../get_prev_next_version.sh 1 next 0.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_100_0 () {
    ret=$(../get_prev_next_version.sh 1 next 0.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_100_1 () {
    ret=$(../get_prev_next_version.sh 1 next 0.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_100_9 () {
    ret=$(../get_prev_next_version.sh 1 next 0.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_100_10 () {
    ret=$(../get_prev_next_version.sh 1 next 0.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_100_99 () {
    ret=$(../get_prev_next_version.sh 1 next 0.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_100_100 () {
    ret=$(../get_prev_next_version.sh 1 next 0.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_100_999 () {
    ret=$(../get_prev_next_version.sh 1 next 0.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_999_0 () {
    ret=$(../get_prev_next_version.sh 1 next 0.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_999_1 () {
    ret=$(../get_prev_next_version.sh 1 next 0.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_999_9 () {
    ret=$(../get_prev_next_version.sh 1 next 0.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_999_10 () {
    ret=$(../get_prev_next_version.sh 1 next 0.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_999_99 () {
    ret=$(../get_prev_next_version.sh 1 next 0.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_999_100 () {
    ret=$(../get_prev_next_version.sh 1 next 0.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_0_999_999 () {
    ret=$(../get_prev_next_version.sh 1 next 0.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_0_0 () {
    ret=$(../get_prev_next_version.sh 1 next 1.0.0)
    test "$ret" = "1.0.1"
}

it_goes_next_1_comb_1_0_1 () {
    ret=$(../get_prev_next_version.sh 1 next 1.0.1)
    test "$ret" = "1.0.2"
}

it_goes_next_1_comb_1_0_9 () {
    ret=$(../get_prev_next_version.sh 1 next 1.0.9)
    test "$ret" = "1.1.0"
}

it_goes_next_1_comb_1_0_10 () {
    ret=$(../get_prev_next_version.sh 1 next 1.0.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_0_99 () {
    ret=$(../get_prev_next_version.sh 1 next 1.0.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_0_100 () {
    ret=$(../get_prev_next_version.sh 1 next 1.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_0_999 () {
    ret=$(../get_prev_next_version.sh 1 next 1.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_1_0 () {
    ret=$(../get_prev_next_version.sh 1 next 1.1.0)
    test "$ret" = "1.1.1"
}

it_goes_next_1_comb_1_1_1 () {
    ret=$(../get_prev_next_version.sh 1 next 1.1.1)
    test "$ret" = "1.1.2"
}

it_goes_next_1_comb_1_1_9 () {
    ret=$(../get_prev_next_version.sh 1 next 1.1.9)
    test "$ret" = "1.2.0"
}

it_goes_next_1_comb_1_1_10 () {
    ret=$(../get_prev_next_version.sh 1 next 1.1.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_1_99 () {
    ret=$(../get_prev_next_version.sh 1 next 1.1.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_1_100 () {
    ret=$(../get_prev_next_version.sh 1 next 1.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_1_999 () {
    ret=$(../get_prev_next_version.sh 1 next 1.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_9_0 () {
    ret=$(../get_prev_next_version.sh 1 next 1.9.0)
    test "$ret" = "1.9.1"
}

it_goes_next_1_comb_1_9_1 () {
    ret=$(../get_prev_next_version.sh 1 next 1.9.1)
    test "$ret" = "1.9.2"
}

it_goes_next_1_comb_1_9_9 () {
    ret=$(../get_prev_next_version.sh 1 next 1.9.9)
    test "$ret" = "2.0.0"
}

it_goes_next_1_comb_1_9_10 () {
    ret=$(../get_prev_next_version.sh 1 next 1.9.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_9_99 () {
    ret=$(../get_prev_next_version.sh 1 next 1.9.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_9_100 () {
    ret=$(../get_prev_next_version.sh 1 next 1.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_9_999 () {
    ret=$(../get_prev_next_version.sh 1 next 1.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_10_0 () {
    ret=$(../get_prev_next_version.sh 1 next 1.10.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_10_1 () {
    ret=$(../get_prev_next_version.sh 1 next 1.10.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_10_9 () {
    ret=$(../get_prev_next_version.sh 1 next 1.10.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_10_10 () {
    ret=$(../get_prev_next_version.sh 1 next 1.10.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_10_99 () {
    ret=$(../get_prev_next_version.sh 1 next 1.10.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_10_100 () {
    ret=$(../get_prev_next_version.sh 1 next 1.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_10_999 () {
    ret=$(../get_prev_next_version.sh 1 next 1.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_99_0 () {
    ret=$(../get_prev_next_version.sh 1 next 1.99.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_99_1 () {
    ret=$(../get_prev_next_version.sh 1 next 1.99.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_99_9 () {
    ret=$(../get_prev_next_version.sh 1 next 1.99.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_99_10 () {
    ret=$(../get_prev_next_version.sh 1 next 1.99.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_99_99 () {
    ret=$(../get_prev_next_version.sh 1 next 1.99.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_99_100 () {
    ret=$(../get_prev_next_version.sh 1 next 1.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_99_999 () {
    ret=$(../get_prev_next_version.sh 1 next 1.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_100_0 () {
    ret=$(../get_prev_next_version.sh 1 next 1.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_100_1 () {
    ret=$(../get_prev_next_version.sh 1 next 1.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_100_9 () {
    ret=$(../get_prev_next_version.sh 1 next 1.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_100_10 () {
    ret=$(../get_prev_next_version.sh 1 next 1.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_100_99 () {
    ret=$(../get_prev_next_version.sh 1 next 1.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_100_100 () {
    ret=$(../get_prev_next_version.sh 1 next 1.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_100_999 () {
    ret=$(../get_prev_next_version.sh 1 next 1.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_999_0 () {
    ret=$(../get_prev_next_version.sh 1 next 1.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_999_1 () {
    ret=$(../get_prev_next_version.sh 1 next 1.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_999_9 () {
    ret=$(../get_prev_next_version.sh 1 next 1.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_999_10 () {
    ret=$(../get_prev_next_version.sh 1 next 1.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_999_99 () {
    ret=$(../get_prev_next_version.sh 1 next 1.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_999_100 () {
    ret=$(../get_prev_next_version.sh 1 next 1.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_1_999_999 () {
    ret=$(../get_prev_next_version.sh 1 next 1.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_0_0 () {
    ret=$(../get_prev_next_version.sh 1 next 9.0.0)
    test "$ret" = "9.0.1"
}

it_goes_next_1_comb_9_0_1 () {
    ret=$(../get_prev_next_version.sh 1 next 9.0.1)
    test "$ret" = "9.0.2"
}

it_goes_next_1_comb_9_0_9 () {
    ret=$(../get_prev_next_version.sh 1 next 9.0.9)
    test "$ret" = "9.1.0"
}

it_goes_next_1_comb_9_0_10 () {
    ret=$(../get_prev_next_version.sh 1 next 9.0.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_0_99 () {
    ret=$(../get_prev_next_version.sh 1 next 9.0.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_0_100 () {
    ret=$(../get_prev_next_version.sh 1 next 9.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_0_999 () {
    ret=$(../get_prev_next_version.sh 1 next 9.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_1_0 () {
    ret=$(../get_prev_next_version.sh 1 next 9.1.0)
    test "$ret" = "9.1.1"
}

it_goes_next_1_comb_9_1_1 () {
    ret=$(../get_prev_next_version.sh 1 next 9.1.1)
    test "$ret" = "9.1.2"
}

it_goes_next_1_comb_9_1_9 () {
    ret=$(../get_prev_next_version.sh 1 next 9.1.9)
    test "$ret" = "9.2.0"
}

it_goes_next_1_comb_9_1_10 () {
    ret=$(../get_prev_next_version.sh 1 next 9.1.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_1_99 () {
    ret=$(../get_prev_next_version.sh 1 next 9.1.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_1_100 () {
    ret=$(../get_prev_next_version.sh 1 next 9.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_1_999 () {
    ret=$(../get_prev_next_version.sh 1 next 9.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_9_0 () {
    ret=$(../get_prev_next_version.sh 1 next 9.9.0)
    test "$ret" = "9.9.1"
}

it_goes_next_1_comb_9_9_1 () {
    ret=$(../get_prev_next_version.sh 1 next 9.9.1)
    test "$ret" = "9.9.2"
}

it_goes_next_1_comb_9_9_9 () {
    ret=$(../get_prev_next_version.sh 1 next 9.9.9)
    test "$ret" = "9.9.9.1"
}

it_goes_next_1_comb_9_9_10 () {
    ret=$(../get_prev_next_version.sh 1 next 9.9.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_9_99 () {
    ret=$(../get_prev_next_version.sh 1 next 9.9.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_9_100 () {
    ret=$(../get_prev_next_version.sh 1 next 9.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_9_999 () {
    ret=$(../get_prev_next_version.sh 1 next 9.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_10_0 () {
    ret=$(../get_prev_next_version.sh 1 next 9.10.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_10_1 () {
    ret=$(../get_prev_next_version.sh 1 next 9.10.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_10_9 () {
    ret=$(../get_prev_next_version.sh 1 next 9.10.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_10_10 () {
    ret=$(../get_prev_next_version.sh 1 next 9.10.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_10_99 () {
    ret=$(../get_prev_next_version.sh 1 next 9.10.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_10_100 () {
    ret=$(../get_prev_next_version.sh 1 next 9.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_10_999 () {
    ret=$(../get_prev_next_version.sh 1 next 9.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_99_0 () {
    ret=$(../get_prev_next_version.sh 1 next 9.99.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_99_1 () {
    ret=$(../get_prev_next_version.sh 1 next 9.99.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_99_9 () {
    ret=$(../get_prev_next_version.sh 1 next 9.99.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_99_10 () {
    ret=$(../get_prev_next_version.sh 1 next 9.99.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_99_99 () {
    ret=$(../get_prev_next_version.sh 1 next 9.99.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_99_100 () {
    ret=$(../get_prev_next_version.sh 1 next 9.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_99_999 () {
    ret=$(../get_prev_next_version.sh 1 next 9.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_100_0 () {
    ret=$(../get_prev_next_version.sh 1 next 9.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_100_1 () {
    ret=$(../get_prev_next_version.sh 1 next 9.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_100_9 () {
    ret=$(../get_prev_next_version.sh 1 next 9.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_100_10 () {
    ret=$(../get_prev_next_version.sh 1 next 9.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_100_99 () {
    ret=$(../get_prev_next_version.sh 1 next 9.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_100_100 () {
    ret=$(../get_prev_next_version.sh 1 next 9.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_100_999 () {
    ret=$(../get_prev_next_version.sh 1 next 9.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_999_0 () {
    ret=$(../get_prev_next_version.sh 1 next 9.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_999_1 () {
    ret=$(../get_prev_next_version.sh 1 next 9.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_999_9 () {
    ret=$(../get_prev_next_version.sh 1 next 9.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_999_10 () {
    ret=$(../get_prev_next_version.sh 1 next 9.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_999_99 () {
    ret=$(../get_prev_next_version.sh 1 next 9.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_999_100 () {
    ret=$(../get_prev_next_version.sh 1 next 9.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_9_999_999 () {
    ret=$(../get_prev_next_version.sh 1 next 9.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_0_0 () {
    ret=$(../get_prev_next_version.sh 1 next 10.0.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_0_1 () {
    ret=$(../get_prev_next_version.sh 1 next 10.0.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_0_9 () {
    ret=$(../get_prev_next_version.sh 1 next 10.0.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_0_10 () {
    ret=$(../get_prev_next_version.sh 1 next 10.0.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_0_99 () {
    ret=$(../get_prev_next_version.sh 1 next 10.0.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_0_100 () {
    ret=$(../get_prev_next_version.sh 1 next 10.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_0_999 () {
    ret=$(../get_prev_next_version.sh 1 next 10.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_1_0 () {
    ret=$(../get_prev_next_version.sh 1 next 10.1.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_1_1 () {
    ret=$(../get_prev_next_version.sh 1 next 10.1.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_1_9 () {
    ret=$(../get_prev_next_version.sh 1 next 10.1.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_1_10 () {
    ret=$(../get_prev_next_version.sh 1 next 10.1.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_1_99 () {
    ret=$(../get_prev_next_version.sh 1 next 10.1.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_1_100 () {
    ret=$(../get_prev_next_version.sh 1 next 10.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_1_999 () {
    ret=$(../get_prev_next_version.sh 1 next 10.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_9_0 () {
    ret=$(../get_prev_next_version.sh 1 next 10.9.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_9_1 () {
    ret=$(../get_prev_next_version.sh 1 next 10.9.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_9_9 () {
    ret=$(../get_prev_next_version.sh 1 next 10.9.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_9_10 () {
    ret=$(../get_prev_next_version.sh 1 next 10.9.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_9_99 () {
    ret=$(../get_prev_next_version.sh 1 next 10.9.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_9_100 () {
    ret=$(../get_prev_next_version.sh 1 next 10.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_9_999 () {
    ret=$(../get_prev_next_version.sh 1 next 10.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_10_0 () {
    ret=$(../get_prev_next_version.sh 1 next 10.10.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_10_1 () {
    ret=$(../get_prev_next_version.sh 1 next 10.10.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_10_9 () {
    ret=$(../get_prev_next_version.sh 1 next 10.10.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_10_10 () {
    ret=$(../get_prev_next_version.sh 1 next 10.10.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_10_99 () {
    ret=$(../get_prev_next_version.sh 1 next 10.10.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_10_100 () {
    ret=$(../get_prev_next_version.sh 1 next 10.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_10_999 () {
    ret=$(../get_prev_next_version.sh 1 next 10.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_99_0 () {
    ret=$(../get_prev_next_version.sh 1 next 10.99.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_99_1 () {
    ret=$(../get_prev_next_version.sh 1 next 10.99.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_99_9 () {
    ret=$(../get_prev_next_version.sh 1 next 10.99.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_99_10 () {
    ret=$(../get_prev_next_version.sh 1 next 10.99.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_99_99 () {
    ret=$(../get_prev_next_version.sh 1 next 10.99.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_99_100 () {
    ret=$(../get_prev_next_version.sh 1 next 10.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_99_999 () {
    ret=$(../get_prev_next_version.sh 1 next 10.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_100_0 () {
    ret=$(../get_prev_next_version.sh 1 next 10.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_100_1 () {
    ret=$(../get_prev_next_version.sh 1 next 10.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_100_9 () {
    ret=$(../get_prev_next_version.sh 1 next 10.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_100_10 () {
    ret=$(../get_prev_next_version.sh 1 next 10.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_100_99 () {
    ret=$(../get_prev_next_version.sh 1 next 10.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_100_100 () {
    ret=$(../get_prev_next_version.sh 1 next 10.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_100_999 () {
    ret=$(../get_prev_next_version.sh 1 next 10.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_999_0 () {
    ret=$(../get_prev_next_version.sh 1 next 10.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_999_1 () {
    ret=$(../get_prev_next_version.sh 1 next 10.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_999_9 () {
    ret=$(../get_prev_next_version.sh 1 next 10.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_999_10 () {
    ret=$(../get_prev_next_version.sh 1 next 10.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_999_99 () {
    ret=$(../get_prev_next_version.sh 1 next 10.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_999_100 () {
    ret=$(../get_prev_next_version.sh 1 next 10.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_10_999_999 () {
    ret=$(../get_prev_next_version.sh 1 next 10.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_0_0 () {
    ret=$(../get_prev_next_version.sh 1 next 99.0.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_0_1 () {
    ret=$(../get_prev_next_version.sh 1 next 99.0.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_0_9 () {
    ret=$(../get_prev_next_version.sh 1 next 99.0.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_0_10 () {
    ret=$(../get_prev_next_version.sh 1 next 99.0.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_0_99 () {
    ret=$(../get_prev_next_version.sh 1 next 99.0.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_0_100 () {
    ret=$(../get_prev_next_version.sh 1 next 99.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_0_999 () {
    ret=$(../get_prev_next_version.sh 1 next 99.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_1_0 () {
    ret=$(../get_prev_next_version.sh 1 next 99.1.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_1_1 () {
    ret=$(../get_prev_next_version.sh 1 next 99.1.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_1_9 () {
    ret=$(../get_prev_next_version.sh 1 next 99.1.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_1_10 () {
    ret=$(../get_prev_next_version.sh 1 next 99.1.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_1_99 () {
    ret=$(../get_prev_next_version.sh 1 next 99.1.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_1_100 () {
    ret=$(../get_prev_next_version.sh 1 next 99.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_1_999 () {
    ret=$(../get_prev_next_version.sh 1 next 99.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_9_0 () {
    ret=$(../get_prev_next_version.sh 1 next 99.9.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_9_1 () {
    ret=$(../get_prev_next_version.sh 1 next 99.9.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_9_9 () {
    ret=$(../get_prev_next_version.sh 1 next 99.9.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_9_10 () {
    ret=$(../get_prev_next_version.sh 1 next 99.9.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_9_99 () {
    ret=$(../get_prev_next_version.sh 1 next 99.9.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_9_100 () {
    ret=$(../get_prev_next_version.sh 1 next 99.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_9_999 () {
    ret=$(../get_prev_next_version.sh 1 next 99.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_10_0 () {
    ret=$(../get_prev_next_version.sh 1 next 99.10.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_10_1 () {
    ret=$(../get_prev_next_version.sh 1 next 99.10.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_10_9 () {
    ret=$(../get_prev_next_version.sh 1 next 99.10.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_10_10 () {
    ret=$(../get_prev_next_version.sh 1 next 99.10.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_10_99 () {
    ret=$(../get_prev_next_version.sh 1 next 99.10.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_10_100 () {
    ret=$(../get_prev_next_version.sh 1 next 99.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_10_999 () {
    ret=$(../get_prev_next_version.sh 1 next 99.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_99_0 () {
    ret=$(../get_prev_next_version.sh 1 next 99.99.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_99_1 () {
    ret=$(../get_prev_next_version.sh 1 next 99.99.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_99_9 () {
    ret=$(../get_prev_next_version.sh 1 next 99.99.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_99_10 () {
    ret=$(../get_prev_next_version.sh 1 next 99.99.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_99_99 () {
    ret=$(../get_prev_next_version.sh 1 next 99.99.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_99_100 () {
    ret=$(../get_prev_next_version.sh 1 next 99.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_99_999 () {
    ret=$(../get_prev_next_version.sh 1 next 99.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_100_0 () {
    ret=$(../get_prev_next_version.sh 1 next 99.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_100_1 () {
    ret=$(../get_prev_next_version.sh 1 next 99.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_100_9 () {
    ret=$(../get_prev_next_version.sh 1 next 99.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_100_10 () {
    ret=$(../get_prev_next_version.sh 1 next 99.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_100_99 () {
    ret=$(../get_prev_next_version.sh 1 next 99.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_100_100 () {
    ret=$(../get_prev_next_version.sh 1 next 99.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_100_999 () {
    ret=$(../get_prev_next_version.sh 1 next 99.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_999_0 () {
    ret=$(../get_prev_next_version.sh 1 next 99.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_999_1 () {
    ret=$(../get_prev_next_version.sh 1 next 99.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_999_9 () {
    ret=$(../get_prev_next_version.sh 1 next 99.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_999_10 () {
    ret=$(../get_prev_next_version.sh 1 next 99.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_999_99 () {
    ret=$(../get_prev_next_version.sh 1 next 99.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_999_100 () {
    ret=$(../get_prev_next_version.sh 1 next 99.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_99_999_999 () {
    ret=$(../get_prev_next_version.sh 1 next 99.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_0_0 () {
    ret=$(../get_prev_next_version.sh 1 next 100.0.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_0_1 () {
    ret=$(../get_prev_next_version.sh 1 next 100.0.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_0_9 () {
    ret=$(../get_prev_next_version.sh 1 next 100.0.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_0_10 () {
    ret=$(../get_prev_next_version.sh 1 next 100.0.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_0_99 () {
    ret=$(../get_prev_next_version.sh 1 next 100.0.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_0_100 () {
    ret=$(../get_prev_next_version.sh 1 next 100.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_0_999 () {
    ret=$(../get_prev_next_version.sh 1 next 100.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_1_0 () {
    ret=$(../get_prev_next_version.sh 1 next 100.1.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_1_1 () {
    ret=$(../get_prev_next_version.sh 1 next 100.1.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_1_9 () {
    ret=$(../get_prev_next_version.sh 1 next 100.1.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_1_10 () {
    ret=$(../get_prev_next_version.sh 1 next 100.1.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_1_99 () {
    ret=$(../get_prev_next_version.sh 1 next 100.1.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_1_100 () {
    ret=$(../get_prev_next_version.sh 1 next 100.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_1_999 () {
    ret=$(../get_prev_next_version.sh 1 next 100.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_9_0 () {
    ret=$(../get_prev_next_version.sh 1 next 100.9.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_9_1 () {
    ret=$(../get_prev_next_version.sh 1 next 100.9.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_9_9 () {
    ret=$(../get_prev_next_version.sh 1 next 100.9.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_9_10 () {
    ret=$(../get_prev_next_version.sh 1 next 100.9.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_9_99 () {
    ret=$(../get_prev_next_version.sh 1 next 100.9.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_9_100 () {
    ret=$(../get_prev_next_version.sh 1 next 100.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_9_999 () {
    ret=$(../get_prev_next_version.sh 1 next 100.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_10_0 () {
    ret=$(../get_prev_next_version.sh 1 next 100.10.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_10_1 () {
    ret=$(../get_prev_next_version.sh 1 next 100.10.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_10_9 () {
    ret=$(../get_prev_next_version.sh 1 next 100.10.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_10_10 () {
    ret=$(../get_prev_next_version.sh 1 next 100.10.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_10_99 () {
    ret=$(../get_prev_next_version.sh 1 next 100.10.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_10_100 () {
    ret=$(../get_prev_next_version.sh 1 next 100.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_10_999 () {
    ret=$(../get_prev_next_version.sh 1 next 100.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_99_0 () {
    ret=$(../get_prev_next_version.sh 1 next 100.99.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_99_1 () {
    ret=$(../get_prev_next_version.sh 1 next 100.99.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_99_9 () {
    ret=$(../get_prev_next_version.sh 1 next 100.99.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_99_10 () {
    ret=$(../get_prev_next_version.sh 1 next 100.99.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_99_99 () {
    ret=$(../get_prev_next_version.sh 1 next 100.99.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_99_100 () {
    ret=$(../get_prev_next_version.sh 1 next 100.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_99_999 () {
    ret=$(../get_prev_next_version.sh 1 next 100.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_100_0 () {
    ret=$(../get_prev_next_version.sh 1 next 100.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_100_1 () {
    ret=$(../get_prev_next_version.sh 1 next 100.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_100_9 () {
    ret=$(../get_prev_next_version.sh 1 next 100.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_100_10 () {
    ret=$(../get_prev_next_version.sh 1 next 100.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_100_99 () {
    ret=$(../get_prev_next_version.sh 1 next 100.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_100_100 () {
    ret=$(../get_prev_next_version.sh 1 next 100.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_100_999 () {
    ret=$(../get_prev_next_version.sh 1 next 100.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_999_0 () {
    ret=$(../get_prev_next_version.sh 1 next 100.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_999_1 () {
    ret=$(../get_prev_next_version.sh 1 next 100.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_999_9 () {
    ret=$(../get_prev_next_version.sh 1 next 100.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_999_10 () {
    ret=$(../get_prev_next_version.sh 1 next 100.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_999_99 () {
    ret=$(../get_prev_next_version.sh 1 next 100.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_999_100 () {
    ret=$(../get_prev_next_version.sh 1 next 100.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_100_999_999 () {
    ret=$(../get_prev_next_version.sh 1 next 100.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_0_0 () {
    ret=$(../get_prev_next_version.sh 1 next 999.0.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_0_1 () {
    ret=$(../get_prev_next_version.sh 1 next 999.0.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_0_9 () {
    ret=$(../get_prev_next_version.sh 1 next 999.0.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_0_10 () {
    ret=$(../get_prev_next_version.sh 1 next 999.0.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_0_99 () {
    ret=$(../get_prev_next_version.sh 1 next 999.0.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_0_100 () {
    ret=$(../get_prev_next_version.sh 1 next 999.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_0_999 () {
    ret=$(../get_prev_next_version.sh 1 next 999.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_1_0 () {
    ret=$(../get_prev_next_version.sh 1 next 999.1.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_1_1 () {
    ret=$(../get_prev_next_version.sh 1 next 999.1.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_1_9 () {
    ret=$(../get_prev_next_version.sh 1 next 999.1.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_1_10 () {
    ret=$(../get_prev_next_version.sh 1 next 999.1.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_1_99 () {
    ret=$(../get_prev_next_version.sh 1 next 999.1.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_1_100 () {
    ret=$(../get_prev_next_version.sh 1 next 999.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_1_999 () {
    ret=$(../get_prev_next_version.sh 1 next 999.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_9_0 () {
    ret=$(../get_prev_next_version.sh 1 next 999.9.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_9_1 () {
    ret=$(../get_prev_next_version.sh 1 next 999.9.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_9_9 () {
    ret=$(../get_prev_next_version.sh 1 next 999.9.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_9_10 () {
    ret=$(../get_prev_next_version.sh 1 next 999.9.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_9_99 () {
    ret=$(../get_prev_next_version.sh 1 next 999.9.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_9_100 () {
    ret=$(../get_prev_next_version.sh 1 next 999.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_9_999 () {
    ret=$(../get_prev_next_version.sh 1 next 999.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_10_0 () {
    ret=$(../get_prev_next_version.sh 1 next 999.10.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_10_1 () {
    ret=$(../get_prev_next_version.sh 1 next 999.10.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_10_9 () {
    ret=$(../get_prev_next_version.sh 1 next 999.10.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_10_10 () {
    ret=$(../get_prev_next_version.sh 1 next 999.10.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_10_99 () {
    ret=$(../get_prev_next_version.sh 1 next 999.10.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_10_100 () {
    ret=$(../get_prev_next_version.sh 1 next 999.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_10_999 () {
    ret=$(../get_prev_next_version.sh 1 next 999.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_99_0 () {
    ret=$(../get_prev_next_version.sh 1 next 999.99.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_99_1 () {
    ret=$(../get_prev_next_version.sh 1 next 999.99.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_99_9 () {
    ret=$(../get_prev_next_version.sh 1 next 999.99.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_99_10 () {
    ret=$(../get_prev_next_version.sh 1 next 999.99.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_99_99 () {
    ret=$(../get_prev_next_version.sh 1 next 999.99.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_99_100 () {
    ret=$(../get_prev_next_version.sh 1 next 999.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_99_999 () {
    ret=$(../get_prev_next_version.sh 1 next 999.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_100_0 () {
    ret=$(../get_prev_next_version.sh 1 next 999.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_100_1 () {
    ret=$(../get_prev_next_version.sh 1 next 999.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_100_9 () {
    ret=$(../get_prev_next_version.sh 1 next 999.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_100_10 () {
    ret=$(../get_prev_next_version.sh 1 next 999.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_100_99 () {
    ret=$(../get_prev_next_version.sh 1 next 999.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_100_100 () {
    ret=$(../get_prev_next_version.sh 1 next 999.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_100_999 () {
    ret=$(../get_prev_next_version.sh 1 next 999.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_999_0 () {
    ret=$(../get_prev_next_version.sh 1 next 999.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_999_1 () {
    ret=$(../get_prev_next_version.sh 1 next 999.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_999_9 () {
    ret=$(../get_prev_next_version.sh 1 next 999.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_999_10 () {
    ret=$(../get_prev_next_version.sh 1 next 999.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_999_99 () {
    ret=$(../get_prev_next_version.sh 1 next 999.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_999_100 () {
    ret=$(../get_prev_next_version.sh 1 next 999.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_1_comb_999_999_999 () {
    ret=$(../get_prev_next_version.sh 1 next 999.999.999)
    test "$ret" = "$err_field_size"
}


###############
## Forward 2 ##
###############

it_goes_next_2_comb_0_0_0 () {
    ret=$(../get_prev_next_version.sh 2 next 0.0.0)
    test "$ret" = "0.0.1"
}

it_goes_next_2_comb_0_0_1 () {
    ret=$(../get_prev_next_version.sh 2 next 0.0.1)
    test "$ret" = "0.0.2"
}

it_goes_next_2_comb_0_0_9 () {
    ret=$(../get_prev_next_version.sh 2 next 0.0.9)
    test "$ret" = "0.0.10"
}

it_goes_next_2_comb_0_0_10 () {
    ret=$(../get_prev_next_version.sh 2 next 0.0.10)
    test "$ret" = "0.0.11"
}

it_goes_next_2_comb_0_0_99 () {
    ret=$(../get_prev_next_version.sh 2 next 0.0.99)
    test "$ret" = "0.1.0"
}

it_goes_next_2_comb_0_0_100 () {
    ret=$(../get_prev_next_version.sh 2 next 0.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_0_999 () {
    ret=$(../get_prev_next_version.sh 2 next 0.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_1_0 () {
    ret=$(../get_prev_next_version.sh 2 next 0.1.0)
    test "$ret" = "0.1.1"
}

it_goes_next_2_comb_0_1_1 () {
    ret=$(../get_prev_next_version.sh 2 next 0.1.1)
    test "$ret" = "0.1.2"
}

it_goes_next_2_comb_0_1_9 () {
    ret=$(../get_prev_next_version.sh 2 next 0.1.9)
    test "$ret" = "0.1.10"
}

it_goes_next_2_comb_0_1_10 () {
    ret=$(../get_prev_next_version.sh 2 next 0.1.10)
    test "$ret" = "0.1.11"
}

it_goes_next_2_comb_0_1_99 () {
    ret=$(../get_prev_next_version.sh 2 next 0.1.99)
    test "$ret" = "0.2.0"
}

it_goes_next_2_comb_0_1_100 () {
    ret=$(../get_prev_next_version.sh 2 next 0.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_1_999 () {
    ret=$(../get_prev_next_version.sh 2 next 0.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_9_0 () {
    ret=$(../get_prev_next_version.sh 2 next 0.9.0)
    test "$ret" = "0.9.1"
}

it_goes_next_2_comb_0_9_1 () {
    ret=$(../get_prev_next_version.sh 2 next 0.9.1)
    test "$ret" = "0.9.2"
}

it_goes_next_2_comb_0_9_9 () {
    ret=$(../get_prev_next_version.sh 2 next 0.9.9)
    test "$ret" = "0.9.10"
}

it_goes_next_2_comb_0_9_10 () {
    ret=$(../get_prev_next_version.sh 2 next 0.9.10)
    test "$ret" = "0.9.11"
}

it_goes_next_2_comb_0_9_99 () {
    ret=$(../get_prev_next_version.sh 2 next 0.9.99)
    test "$ret" = "0.10.0"
}

it_goes_next_2_comb_0_9_100 () {
    ret=$(../get_prev_next_version.sh 2 next 0.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_9_999 () {
    ret=$(../get_prev_next_version.sh 2 next 0.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_10_0 () {
    ret=$(../get_prev_next_version.sh 2 next 0.10.0)
    test "$ret" = "0.10.1"
}

it_goes_next_2_comb_0_10_1 () {
    ret=$(../get_prev_next_version.sh 2 next 0.10.1)
    test "$ret" = "0.10.2"
}

it_goes_next_2_comb_0_10_9 () {
    ret=$(../get_prev_next_version.sh 2 next 0.10.9)
    test "$ret" = "0.10.10"
}

it_goes_next_2_comb_0_10_10 () {
    ret=$(../get_prev_next_version.sh 2 next 0.10.10)
    test "$ret" = "0.10.11"
}

it_goes_next_2_comb_0_10_99 () {
    ret=$(../get_prev_next_version.sh 2 next 0.10.99)
    test "$ret" = "0.11.0"
}

it_goes_next_2_comb_0_10_100 () {
    ret=$(../get_prev_next_version.sh 2 next 0.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_10_999 () {
    ret=$(../get_prev_next_version.sh 2 next 0.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_99_0 () {
    ret=$(../get_prev_next_version.sh 2 next 0.99.0)
    test "$ret" = "0.99.1"
}

it_goes_next_2_comb_0_99_1 () {
    ret=$(../get_prev_next_version.sh 2 next 0.99.1)
    test "$ret" = "0.99.2"
}

it_goes_next_2_comb_0_99_9 () {
    ret=$(../get_prev_next_version.sh 2 next 0.99.9)
    test "$ret" = "0.99.10"
}

it_goes_next_2_comb_0_99_10 () {
    ret=$(../get_prev_next_version.sh 2 next 0.99.10)
    test "$ret" = "0.99.11"
}

it_goes_next_2_comb_0_99_99 () {
    ret=$(../get_prev_next_version.sh 2 next 0.99.99)
    test "$ret" = "1.0.0"
}

it_goes_next_2_comb_0_99_100 () {
    ret=$(../get_prev_next_version.sh 2 next 0.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_99_999 () {
    ret=$(../get_prev_next_version.sh 2 next 0.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_100_0 () {
    ret=$(../get_prev_next_version.sh 2 next 0.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_100_1 () {
    ret=$(../get_prev_next_version.sh 2 next 0.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_100_9 () {
    ret=$(../get_prev_next_version.sh 2 next 0.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_100_10 () {
    ret=$(../get_prev_next_version.sh 2 next 0.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_100_99 () {
    ret=$(../get_prev_next_version.sh 2 next 0.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_100_100 () {
    ret=$(../get_prev_next_version.sh 2 next 0.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_100_999 () {
    ret=$(../get_prev_next_version.sh 2 next 0.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_999_0 () {
    ret=$(../get_prev_next_version.sh 2 next 0.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_999_1 () {
    ret=$(../get_prev_next_version.sh 2 next 0.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_999_9 () {
    ret=$(../get_prev_next_version.sh 2 next 0.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_999_10 () {
    ret=$(../get_prev_next_version.sh 2 next 0.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_999_99 () {
    ret=$(../get_prev_next_version.sh 2 next 0.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_999_100 () {
    ret=$(../get_prev_next_version.sh 2 next 0.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_0_999_999 () {
    ret=$(../get_prev_next_version.sh 2 next 0.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_0_0 () {
    ret=$(../get_prev_next_version.sh 2 next 1.0.0)
    test "$ret" = "1.0.1"
}

it_goes_next_2_comb_1_0_1 () {
    ret=$(../get_prev_next_version.sh 2 next 1.0.1)
    test "$ret" = "1.0.2"
}

it_goes_next_2_comb_1_0_9 () {
    ret=$(../get_prev_next_version.sh 2 next 1.0.9)
    test "$ret" = "1.0.10"
}

it_goes_next_2_comb_1_0_10 () {
    ret=$(../get_prev_next_version.sh 2 next 1.0.10)
    test "$ret" = "1.0.11"
}

it_goes_next_2_comb_1_0_99 () {
    ret=$(../get_prev_next_version.sh 2 next 1.0.99)
    test "$ret" = "1.1.0"
}

it_goes_next_2_comb_1_0_100 () {
    ret=$(../get_prev_next_version.sh 2 next 1.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_0_999 () {
    ret=$(../get_prev_next_version.sh 2 next 1.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_1_0 () {
    ret=$(../get_prev_next_version.sh 2 next 1.1.0)
    test "$ret" = "1.1.1"
}

it_goes_next_2_comb_1_1_1 () {
    ret=$(../get_prev_next_version.sh 2 next 1.1.1)
    test "$ret" = "1.1.2"
}

it_goes_next_2_comb_1_1_9 () {
    ret=$(../get_prev_next_version.sh 2 next 1.1.9)
    test "$ret" = "1.1.10"
}

it_goes_next_2_comb_1_1_10 () {
    ret=$(../get_prev_next_version.sh 2 next 1.1.10)
    test "$ret" = "1.1.11"
}

it_goes_next_2_comb_1_1_99 () {
    ret=$(../get_prev_next_version.sh 2 next 1.1.99)
    test "$ret" = "1.2.0"
}

it_goes_next_2_comb_1_1_100 () {
    ret=$(../get_prev_next_version.sh 2 next 1.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_1_999 () {
    ret=$(../get_prev_next_version.sh 2 next 1.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_9_0 () {
    ret=$(../get_prev_next_version.sh 2 next 1.9.0)
    test "$ret" = "1.9.1"
}

it_goes_next_2_comb_1_9_1 () {
    ret=$(../get_prev_next_version.sh 2 next 1.9.1)
    test "$ret" = "1.9.2"
}

it_goes_next_2_comb_1_9_9 () {
    ret=$(../get_prev_next_version.sh 2 next 1.9.9)
    test "$ret" = "1.9.10"
}

it_goes_next_2_comb_1_9_10 () {
    ret=$(../get_prev_next_version.sh 2 next 1.9.10)
    test "$ret" = "1.9.11"
}

it_goes_next_2_comb_1_9_99 () {
    ret=$(../get_prev_next_version.sh 2 next 1.9.99)
    test "$ret" = "1.10.0"
}

it_goes_next_2_comb_1_9_100 () {
    ret=$(../get_prev_next_version.sh 2 next 1.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_9_999 () {
    ret=$(../get_prev_next_version.sh 2 next 1.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_10_0 () {
    ret=$(../get_prev_next_version.sh 2 next 1.10.0)
    test "$ret" = "1.10.1"
}

it_goes_next_2_comb_1_10_1 () {
    ret=$(../get_prev_next_version.sh 2 next 1.10.1)
    test "$ret" = "1.10.2"
}

it_goes_next_2_comb_1_10_9 () {
    ret=$(../get_prev_next_version.sh 2 next 1.10.9)
    test "$ret" = "1.10.10"
}

it_goes_next_2_comb_1_10_10 () {
    ret=$(../get_prev_next_version.sh 2 next 1.10.10)
    test "$ret" = "1.10.11"
}

it_goes_next_2_comb_1_10_99 () {
    ret=$(../get_prev_next_version.sh 2 next 1.10.99)
    test "$ret" = "1.11.0"
}

it_goes_next_2_comb_1_10_100 () {
    ret=$(../get_prev_next_version.sh 2 next 1.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_10_999 () {
    ret=$(../get_prev_next_version.sh 2 next 1.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_99_0 () {
    ret=$(../get_prev_next_version.sh 2 next 1.99.0)
    test "$ret" = "1.99.1"
}

it_goes_next_2_comb_1_99_1 () {
    ret=$(../get_prev_next_version.sh 2 next 1.99.1)
    test "$ret" = "1.99.2"
}

it_goes_next_2_comb_1_99_9 () {
    ret=$(../get_prev_next_version.sh 2 next 1.99.9)
    test "$ret" = "1.99.10"
}

it_goes_next_2_comb_1_99_10 () {
    ret=$(../get_prev_next_version.sh 2 next 1.99.10)
    test "$ret" = "1.99.11"
}

it_goes_next_2_comb_1_99_99 () {
    ret=$(../get_prev_next_version.sh 2 next 1.99.99)
    test "$ret" = "2.0.0"
}

it_goes_next_2_comb_1_99_100 () {
    ret=$(../get_prev_next_version.sh 2 next 1.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_99_999 () {
    ret=$(../get_prev_next_version.sh 2 next 1.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_100_0 () {
    ret=$(../get_prev_next_version.sh 2 next 1.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_100_1 () {
    ret=$(../get_prev_next_version.sh 2 next 1.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_100_9 () {
    ret=$(../get_prev_next_version.sh 2 next 1.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_100_10 () {
    ret=$(../get_prev_next_version.sh 2 next 1.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_100_99 () {
    ret=$(../get_prev_next_version.sh 2 next 1.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_100_100 () {
    ret=$(../get_prev_next_version.sh 2 next 1.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_100_999 () {
    ret=$(../get_prev_next_version.sh 2 next 1.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_999_0 () {
    ret=$(../get_prev_next_version.sh 2 next 1.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_999_1 () {
    ret=$(../get_prev_next_version.sh 2 next 1.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_999_9 () {
    ret=$(../get_prev_next_version.sh 2 next 1.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_999_10 () {
    ret=$(../get_prev_next_version.sh 2 next 1.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_999_99 () {
    ret=$(../get_prev_next_version.sh 2 next 1.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_999_100 () {
    ret=$(../get_prev_next_version.sh 2 next 1.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_1_999_999 () {
    ret=$(../get_prev_next_version.sh 2 next 1.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_0_0 () {
    ret=$(../get_prev_next_version.sh 2 next 9.0.0)
    test "$ret" = "9.0.1"
}

it_goes_next_2_comb_9_0_1 () {
    ret=$(../get_prev_next_version.sh 2 next 9.0.1)
    test "$ret" = "9.0.2"
}

it_goes_next_2_comb_9_0_9 () {
    ret=$(../get_prev_next_version.sh 2 next 9.0.9)
    test "$ret" = "9.0.10"
}

it_goes_next_2_comb_9_0_10 () {
    ret=$(../get_prev_next_version.sh 2 next 9.0.10)
    test "$ret" = "9.0.11"
}

it_goes_next_2_comb_9_0_99 () {
    ret=$(../get_prev_next_version.sh 2 next 9.0.99)
    test "$ret" = "9.1.0"
}

it_goes_next_2_comb_9_0_100 () {
    ret=$(../get_prev_next_version.sh 2 next 9.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_0_999 () {
    ret=$(../get_prev_next_version.sh 2 next 9.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_1_0 () {
    ret=$(../get_prev_next_version.sh 2 next 9.1.0)
    test "$ret" = "9.1.1"
}

it_goes_next_2_comb_9_1_1 () {
    ret=$(../get_prev_next_version.sh 2 next 9.1.1)
    test "$ret" = "9.1.2"
}

it_goes_next_2_comb_9_1_9 () {
    ret=$(../get_prev_next_version.sh 2 next 9.1.9)
    test "$ret" = "9.1.10"
}

it_goes_next_2_comb_9_1_10 () {
    ret=$(../get_prev_next_version.sh 2 next 9.1.10)
    test "$ret" = "9.1.11"
}

it_goes_next_2_comb_9_1_99 () {
    ret=$(../get_prev_next_version.sh 2 next 9.1.99)
    test "$ret" = "9.2.0"
}

it_goes_next_2_comb_9_1_100 () {
    ret=$(../get_prev_next_version.sh 2 next 9.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_1_999 () {
    ret=$(../get_prev_next_version.sh 2 next 9.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_9_0 () {
    ret=$(../get_prev_next_version.sh 2 next 9.9.0)
    test "$ret" = "9.9.1"
}

it_goes_next_2_comb_9_9_1 () {
    ret=$(../get_prev_next_version.sh 2 next 9.9.1)
    test "$ret" = "9.9.2"
}

it_goes_next_2_comb_9_9_9 () {
    ret=$(../get_prev_next_version.sh 2 next 9.9.9)
    test "$ret" = "9.9.10"
}

it_goes_next_2_comb_9_9_10 () {
    ret=$(../get_prev_next_version.sh 2 next 9.9.10)
    test "$ret" = "9.9.11"
}

it_goes_next_2_comb_9_9_99 () {
    ret=$(../get_prev_next_version.sh 2 next 9.9.99)
    test "$ret" = "9.10.0"
}

it_goes_next_2_comb_9_9_100 () {
    ret=$(../get_prev_next_version.sh 2 next 9.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_9_999 () {
    ret=$(../get_prev_next_version.sh 2 next 9.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_10_0 () {
    ret=$(../get_prev_next_version.sh 2 next 9.10.0)
    test "$ret" = "9.10.1"
}

it_goes_next_2_comb_9_10_1 () {
    ret=$(../get_prev_next_version.sh 2 next 9.10.1)
    test "$ret" = "9.10.2"
}

it_goes_next_2_comb_9_10_9 () {
    ret=$(../get_prev_next_version.sh 2 next 9.10.9)
    test "$ret" = "9.10.10"
}

it_goes_next_2_comb_9_10_10 () {
    ret=$(../get_prev_next_version.sh 2 next 9.10.10)
    test "$ret" = "9.10.11"
}

it_goes_next_2_comb_9_10_99 () {
    ret=$(../get_prev_next_version.sh 2 next 9.10.99)
    test "$ret" = "9.11.0"
}

it_goes_next_2_comb_9_10_100 () {
    ret=$(../get_prev_next_version.sh 2 next 9.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_10_999 () {
    ret=$(../get_prev_next_version.sh 2 next 9.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_99_0 () {
    ret=$(../get_prev_next_version.sh 2 next 9.99.0)
    test "$ret" = "9.99.1"
}

it_goes_next_2_comb_9_99_1 () {
    ret=$(../get_prev_next_version.sh 2 next 9.99.1)
    test "$ret" = "9.99.2"
}

it_goes_next_2_comb_9_99_9 () {
    ret=$(../get_prev_next_version.sh 2 next 9.99.9)
    test "$ret" = "9.99.10"
}

it_goes_next_2_comb_9_99_10 () {
    ret=$(../get_prev_next_version.sh 2 next 9.99.10)
    test "$ret" = "9.99.11"
}

it_goes_next_2_comb_9_99_99 () {
    ret=$(../get_prev_next_version.sh 2 next 9.99.99)
    test "$ret" = "10.0.0"
}

it_goes_next_2_comb_9_99_100 () {
    ret=$(../get_prev_next_version.sh 2 next 9.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_99_999 () {
    ret=$(../get_prev_next_version.sh 2 next 9.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_100_0 () {
    ret=$(../get_prev_next_version.sh 2 next 9.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_100_1 () {
    ret=$(../get_prev_next_version.sh 2 next 9.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_100_9 () {
    ret=$(../get_prev_next_version.sh 2 next 9.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_100_10 () {
    ret=$(../get_prev_next_version.sh 2 next 9.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_100_99 () {
    ret=$(../get_prev_next_version.sh 2 next 9.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_100_100 () {
    ret=$(../get_prev_next_version.sh 2 next 9.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_100_999 () {
    ret=$(../get_prev_next_version.sh 2 next 9.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_999_0 () {
    ret=$(../get_prev_next_version.sh 2 next 9.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_999_1 () {
    ret=$(../get_prev_next_version.sh 2 next 9.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_999_9 () {
    ret=$(../get_prev_next_version.sh 2 next 9.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_999_10 () {
    ret=$(../get_prev_next_version.sh 2 next 9.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_999_99 () {
    ret=$(../get_prev_next_version.sh 2 next 9.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_999_100 () {
    ret=$(../get_prev_next_version.sh 2 next 9.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_9_999_999 () {
    ret=$(../get_prev_next_version.sh 2 next 9.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_0_0 () {
    ret=$(../get_prev_next_version.sh 2 next 10.0.0)
    test "$ret" = "10.0.1"
}

it_goes_next_2_comb_10_0_1 () {
    ret=$(../get_prev_next_version.sh 2 next 10.0.1)
    test "$ret" = "10.0.2"
}

it_goes_next_2_comb_10_0_9 () {
    ret=$(../get_prev_next_version.sh 2 next 10.0.9)
    test "$ret" = "10.0.10"
}

it_goes_next_2_comb_10_0_10 () {
    ret=$(../get_prev_next_version.sh 2 next 10.0.10)
    test "$ret" = "10.0.11"
}

it_goes_next_2_comb_10_0_99 () {
    ret=$(../get_prev_next_version.sh 2 next 10.0.99)
    test "$ret" = "10.1.0"
}

it_goes_next_2_comb_10_0_100 () {
    ret=$(../get_prev_next_version.sh 2 next 10.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_0_999 () {
    ret=$(../get_prev_next_version.sh 2 next 10.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_1_0 () {
    ret=$(../get_prev_next_version.sh 2 next 10.1.0)
    test "$ret" = "10.1.1"
}

it_goes_next_2_comb_10_1_1 () {
    ret=$(../get_prev_next_version.sh 2 next 10.1.1)
    test "$ret" = "10.1.2"
}

it_goes_next_2_comb_10_1_9 () {
    ret=$(../get_prev_next_version.sh 2 next 10.1.9)
    test "$ret" = "10.1.10"
}

it_goes_next_2_comb_10_1_10 () {
    ret=$(../get_prev_next_version.sh 2 next 10.1.10)
    test "$ret" = "10.1.11"
}

it_goes_next_2_comb_10_1_99 () {
    ret=$(../get_prev_next_version.sh 2 next 10.1.99)
    test "$ret" = "10.2.0"
}

it_goes_next_2_comb_10_1_100 () {
    ret=$(../get_prev_next_version.sh 2 next 10.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_1_999 () {
    ret=$(../get_prev_next_version.sh 2 next 10.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_9_0 () {
    ret=$(../get_prev_next_version.sh 2 next 10.9.0)
    test "$ret" = "10.9.1"
}

it_goes_next_2_comb_10_9_1 () {
    ret=$(../get_prev_next_version.sh 2 next 10.9.1)
    test "$ret" = "10.9.2"
}

it_goes_next_2_comb_10_9_9 () {
    ret=$(../get_prev_next_version.sh 2 next 10.9.9)
    test "$ret" = "10.9.10"
}

it_goes_next_2_comb_10_9_10 () {
    ret=$(../get_prev_next_version.sh 2 next 10.9.10)
    test "$ret" = "10.9.11"
}

it_goes_next_2_comb_10_9_99 () {
    ret=$(../get_prev_next_version.sh 2 next 10.9.99)
    test "$ret" = "10.10.0"
}

it_goes_next_2_comb_10_9_100 () {
    ret=$(../get_prev_next_version.sh 2 next 10.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_9_999 () {
    ret=$(../get_prev_next_version.sh 2 next 10.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_10_0 () {
    ret=$(../get_prev_next_version.sh 2 next 10.10.0)
    test "$ret" = "10.10.1"
}

it_goes_next_2_comb_10_10_1 () {
    ret=$(../get_prev_next_version.sh 2 next 10.10.1)
    test "$ret" = "10.10.2"
}

it_goes_next_2_comb_10_10_9 () {
    ret=$(../get_prev_next_version.sh 2 next 10.10.9)
    test "$ret" = "10.10.10"
}

it_goes_next_2_comb_10_10_10 () {
    ret=$(../get_prev_next_version.sh 2 next 10.10.10)
    test "$ret" = "10.10.11"
}

it_goes_next_2_comb_10_10_99 () {
    ret=$(../get_prev_next_version.sh 2 next 10.10.99)
    test "$ret" = "10.11.0"
}

it_goes_next_2_comb_10_10_100 () {
    ret=$(../get_prev_next_version.sh 2 next 10.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_10_999 () {
    ret=$(../get_prev_next_version.sh 2 next 10.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_99_0 () {
    ret=$(../get_prev_next_version.sh 2 next 10.99.0)
    test "$ret" = "10.99.1"
}

it_goes_next_2_comb_10_99_1 () {
    ret=$(../get_prev_next_version.sh 2 next 10.99.1)
    test "$ret" = "10.99.2"
}

it_goes_next_2_comb_10_99_9 () {
    ret=$(../get_prev_next_version.sh 2 next 10.99.9)
    test "$ret" = "10.99.10"
}

it_goes_next_2_comb_10_99_10 () {
    ret=$(../get_prev_next_version.sh 2 next 10.99.10)
    test "$ret" = "10.99.11"
}

it_goes_next_2_comb_10_99_99 () {
    ret=$(../get_prev_next_version.sh 2 next 10.99.99)
    test "$ret" = "11.0.0"
}

it_goes_next_2_comb_10_99_100 () {
    ret=$(../get_prev_next_version.sh 2 next 10.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_99_999 () {
    ret=$(../get_prev_next_version.sh 2 next 10.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_100_0 () {
    ret=$(../get_prev_next_version.sh 2 next 10.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_100_1 () {
    ret=$(../get_prev_next_version.sh 2 next 10.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_100_9 () {
    ret=$(../get_prev_next_version.sh 2 next 10.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_100_10 () {
    ret=$(../get_prev_next_version.sh 2 next 10.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_100_99 () {
    ret=$(../get_prev_next_version.sh 2 next 10.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_100_100 () {
    ret=$(../get_prev_next_version.sh 2 next 10.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_100_999 () {
    ret=$(../get_prev_next_version.sh 2 next 10.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_999_0 () {
    ret=$(../get_prev_next_version.sh 2 next 10.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_999_1 () {
    ret=$(../get_prev_next_version.sh 2 next 10.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_999_9 () {
    ret=$(../get_prev_next_version.sh 2 next 10.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_999_10 () {
    ret=$(../get_prev_next_version.sh 2 next 10.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_999_99 () {
    ret=$(../get_prev_next_version.sh 2 next 10.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_999_100 () {
    ret=$(../get_prev_next_version.sh 2 next 10.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_10_999_999 () {
    ret=$(../get_prev_next_version.sh 2 next 10.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_0_0 () {
    ret=$(../get_prev_next_version.sh 2 next 99.0.0)
    test "$ret" = "99.0.1"
}

it_goes_next_2_comb_99_0_1 () {
    ret=$(../get_prev_next_version.sh 2 next 99.0.1)
    test "$ret" = "99.0.2"
}

it_goes_next_2_comb_99_0_9 () {
    ret=$(../get_prev_next_version.sh 2 next 99.0.9)
    test "$ret" = "99.0.10"
}

it_goes_next_2_comb_99_0_10 () {
    ret=$(../get_prev_next_version.sh 2 next 99.0.10)
    test "$ret" = "99.0.11"
}

it_goes_next_2_comb_99_0_99 () {
    ret=$(../get_prev_next_version.sh 2 next 99.0.99)
    test "$ret" = "99.1.0"
}

it_goes_next_2_comb_99_0_100 () {
    ret=$(../get_prev_next_version.sh 2 next 99.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_0_999 () {
    ret=$(../get_prev_next_version.sh 2 next 99.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_1_0 () {
    ret=$(../get_prev_next_version.sh 2 next 99.1.0)
    test "$ret" = "99.1.1"
}

it_goes_next_2_comb_99_1_1 () {
    ret=$(../get_prev_next_version.sh 2 next 99.1.1)
    test "$ret" = "99.1.2"
}

it_goes_next_2_comb_99_1_9 () {
    ret=$(../get_prev_next_version.sh 2 next 99.1.9)
    test "$ret" = "99.1.10"
}

it_goes_next_2_comb_99_1_10 () {
    ret=$(../get_prev_next_version.sh 2 next 99.1.10)
    test "$ret" = "99.1.11"
}

it_goes_next_2_comb_99_1_99 () {
    ret=$(../get_prev_next_version.sh 2 next 99.1.99)
    test "$ret" = "99.2.0"
}

it_goes_next_2_comb_99_1_100 () {
    ret=$(../get_prev_next_version.sh 2 next 99.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_1_999 () {
    ret=$(../get_prev_next_version.sh 2 next 99.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_9_0 () {
    ret=$(../get_prev_next_version.sh 2 next 99.9.0)
    test "$ret" = "99.9.1"
}

it_goes_next_2_comb_99_9_1 () {
    ret=$(../get_prev_next_version.sh 2 next 99.9.1)
    test "$ret" = "99.9.2"
}

it_goes_next_2_comb_99_9_9 () {
    ret=$(../get_prev_next_version.sh 2 next 99.9.9)
    test "$ret" = "99.9.10"
}

it_goes_next_2_comb_99_9_10 () {
    ret=$(../get_prev_next_version.sh 2 next 99.9.10)
    test "$ret" = "99.9.11"
}

it_goes_next_2_comb_99_9_99 () {
    ret=$(../get_prev_next_version.sh 2 next 99.9.99)
    test "$ret" = "99.10.0"
}

it_goes_next_2_comb_99_9_100 () {
    ret=$(../get_prev_next_version.sh 2 next 99.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_9_999 () {
    ret=$(../get_prev_next_version.sh 2 next 99.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_10_0 () {
    ret=$(../get_prev_next_version.sh 2 next 99.10.0)
    test "$ret" = "99.10.1"
}

it_goes_next_2_comb_99_10_1 () {
    ret=$(../get_prev_next_version.sh 2 next 99.10.1)
    test "$ret" = "99.10.2"
}

it_goes_next_2_comb_99_10_9 () {
    ret=$(../get_prev_next_version.sh 2 next 99.10.9)
    test "$ret" = "99.10.10"
}

it_goes_next_2_comb_99_10_10 () {
    ret=$(../get_prev_next_version.sh 2 next 99.10.10)
    test "$ret" = "99.10.11"
}

it_goes_next_2_comb_99_10_99 () {
    ret=$(../get_prev_next_version.sh 2 next 99.10.99)
    test "$ret" = "99.11.0"
}

it_goes_next_2_comb_99_10_100 () {
    ret=$(../get_prev_next_version.sh 2 next 99.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_10_999 () {
    ret=$(../get_prev_next_version.sh 2 next 99.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_99_0 () {
    ret=$(../get_prev_next_version.sh 2 next 99.99.0)
    test "$ret" = "99.99.1"
}

it_goes_next_2_comb_99_99_1 () {
    ret=$(../get_prev_next_version.sh 2 next 99.99.1)
    test "$ret" = "99.99.2"
}

it_goes_next_2_comb_99_99_9 () {
    ret=$(../get_prev_next_version.sh 2 next 99.99.9)
    test "$ret" = "99.99.10"
}

it_goes_next_2_comb_99_99_10 () {
    ret=$(../get_prev_next_version.sh 2 next 99.99.10)
    test "$ret" = "99.99.11"
}

it_goes_next_2_comb_99_99_99 () {
    ret=$(../get_prev_next_version.sh 2 next 99.99.99)
    test "$ret" = "99.99.99.1"
}

it_goes_next_2_comb_99_99_100 () {
    ret=$(../get_prev_next_version.sh 2 next 99.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_99_999 () {
    ret=$(../get_prev_next_version.sh 2 next 99.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_100_0 () {
    ret=$(../get_prev_next_version.sh 2 next 99.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_100_1 () {
    ret=$(../get_prev_next_version.sh 2 next 99.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_100_9 () {
    ret=$(../get_prev_next_version.sh 2 next 99.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_100_10 () {
    ret=$(../get_prev_next_version.sh 2 next 99.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_100_99 () {
    ret=$(../get_prev_next_version.sh 2 next 99.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_100_100 () {
    ret=$(../get_prev_next_version.sh 2 next 99.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_100_999 () {
    ret=$(../get_prev_next_version.sh 2 next 99.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_999_0 () {
    ret=$(../get_prev_next_version.sh 2 next 99.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_999_1 () {
    ret=$(../get_prev_next_version.sh 2 next 99.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_999_9 () {
    ret=$(../get_prev_next_version.sh 2 next 99.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_999_10 () {
    ret=$(../get_prev_next_version.sh 2 next 99.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_999_99 () {
    ret=$(../get_prev_next_version.sh 2 next 99.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_999_100 () {
    ret=$(../get_prev_next_version.sh 2 next 99.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_99_999_999 () {
    ret=$(../get_prev_next_version.sh 2 next 99.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_0_0 () {
    ret=$(../get_prev_next_version.sh 2 next 100.0.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_0_1 () {
    ret=$(../get_prev_next_version.sh 2 next 100.0.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_0_9 () {
    ret=$(../get_prev_next_version.sh 2 next 100.0.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_0_10 () {
    ret=$(../get_prev_next_version.sh 2 next 100.0.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_0_99 () {
    ret=$(../get_prev_next_version.sh 2 next 100.0.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_0_100 () {
    ret=$(../get_prev_next_version.sh 2 next 100.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_0_999 () {
    ret=$(../get_prev_next_version.sh 2 next 100.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_1_0 () {
    ret=$(../get_prev_next_version.sh 2 next 100.1.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_1_1 () {
    ret=$(../get_prev_next_version.sh 2 next 100.1.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_1_9 () {
    ret=$(../get_prev_next_version.sh 2 next 100.1.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_1_10 () {
    ret=$(../get_prev_next_version.sh 2 next 100.1.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_1_99 () {
    ret=$(../get_prev_next_version.sh 2 next 100.1.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_1_100 () {
    ret=$(../get_prev_next_version.sh 2 next 100.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_1_999 () {
    ret=$(../get_prev_next_version.sh 2 next 100.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_9_0 () {
    ret=$(../get_prev_next_version.sh 2 next 100.9.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_9_1 () {
    ret=$(../get_prev_next_version.sh 2 next 100.9.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_9_9 () {
    ret=$(../get_prev_next_version.sh 2 next 100.9.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_9_10 () {
    ret=$(../get_prev_next_version.sh 2 next 100.9.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_9_99 () {
    ret=$(../get_prev_next_version.sh 2 next 100.9.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_9_100 () {
    ret=$(../get_prev_next_version.sh 2 next 100.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_9_999 () {
    ret=$(../get_prev_next_version.sh 2 next 100.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_10_0 () {
    ret=$(../get_prev_next_version.sh 2 next 100.10.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_10_1 () {
    ret=$(../get_prev_next_version.sh 2 next 100.10.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_10_9 () {
    ret=$(../get_prev_next_version.sh 2 next 100.10.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_10_10 () {
    ret=$(../get_prev_next_version.sh 2 next 100.10.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_10_99 () {
    ret=$(../get_prev_next_version.sh 2 next 100.10.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_10_100 () {
    ret=$(../get_prev_next_version.sh 2 next 100.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_10_999 () {
    ret=$(../get_prev_next_version.sh 2 next 100.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_99_0 () {
    ret=$(../get_prev_next_version.sh 2 next 100.99.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_99_1 () {
    ret=$(../get_prev_next_version.sh 2 next 100.99.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_99_9 () {
    ret=$(../get_prev_next_version.sh 2 next 100.99.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_99_10 () {
    ret=$(../get_prev_next_version.sh 2 next 100.99.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_99_99 () {
    ret=$(../get_prev_next_version.sh 2 next 100.99.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_99_100 () {
    ret=$(../get_prev_next_version.sh 2 next 100.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_99_999 () {
    ret=$(../get_prev_next_version.sh 2 next 100.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_100_0 () {
    ret=$(../get_prev_next_version.sh 2 next 100.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_100_1 () {
    ret=$(../get_prev_next_version.sh 2 next 100.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_100_9 () {
    ret=$(../get_prev_next_version.sh 2 next 100.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_100_10 () {
    ret=$(../get_prev_next_version.sh 2 next 100.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_100_99 () {
    ret=$(../get_prev_next_version.sh 2 next 100.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_100_100 () {
    ret=$(../get_prev_next_version.sh 2 next 100.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_100_999 () {
    ret=$(../get_prev_next_version.sh 2 next 100.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_999_0 () {
    ret=$(../get_prev_next_version.sh 2 next 100.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_999_1 () {
    ret=$(../get_prev_next_version.sh 2 next 100.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_999_9 () {
    ret=$(../get_prev_next_version.sh 2 next 100.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_999_10 () {
    ret=$(../get_prev_next_version.sh 2 next 100.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_999_99 () {
    ret=$(../get_prev_next_version.sh 2 next 100.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_999_100 () {
    ret=$(../get_prev_next_version.sh 2 next 100.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_100_999_999 () {
    ret=$(../get_prev_next_version.sh 2 next 100.999.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_0_0 () {
    ret=$(../get_prev_next_version.sh 2 next 999.0.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_0_1 () {
    ret=$(../get_prev_next_version.sh 2 next 999.0.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_0_9 () {
    ret=$(../get_prev_next_version.sh 2 next 999.0.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_0_10 () {
    ret=$(../get_prev_next_version.sh 2 next 999.0.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_0_99 () {
    ret=$(../get_prev_next_version.sh 2 next 999.0.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_0_100 () {
    ret=$(../get_prev_next_version.sh 2 next 999.0.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_0_999 () {
    ret=$(../get_prev_next_version.sh 2 next 999.0.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_1_0 () {
    ret=$(../get_prev_next_version.sh 2 next 999.1.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_1_1 () {
    ret=$(../get_prev_next_version.sh 2 next 999.1.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_1_9 () {
    ret=$(../get_prev_next_version.sh 2 next 999.1.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_1_10 () {
    ret=$(../get_prev_next_version.sh 2 next 999.1.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_1_99 () {
    ret=$(../get_prev_next_version.sh 2 next 999.1.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_1_100 () {
    ret=$(../get_prev_next_version.sh 2 next 999.1.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_1_999 () {
    ret=$(../get_prev_next_version.sh 2 next 999.1.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_9_0 () {
    ret=$(../get_prev_next_version.sh 2 next 999.9.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_9_1 () {
    ret=$(../get_prev_next_version.sh 2 next 999.9.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_9_9 () {
    ret=$(../get_prev_next_version.sh 2 next 999.9.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_9_10 () {
    ret=$(../get_prev_next_version.sh 2 next 999.9.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_9_99 () {
    ret=$(../get_prev_next_version.sh 2 next 999.9.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_9_100 () {
    ret=$(../get_prev_next_version.sh 2 next 999.9.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_9_999 () {
    ret=$(../get_prev_next_version.sh 2 next 999.9.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_10_0 () {
    ret=$(../get_prev_next_version.sh 2 next 999.10.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_10_1 () {
    ret=$(../get_prev_next_version.sh 2 next 999.10.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_10_9 () {
    ret=$(../get_prev_next_version.sh 2 next 999.10.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_10_10 () {
    ret=$(../get_prev_next_version.sh 2 next 999.10.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_10_99 () {
    ret=$(../get_prev_next_version.sh 2 next 999.10.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_10_100 () {
    ret=$(../get_prev_next_version.sh 2 next 999.10.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_10_999 () {
    ret=$(../get_prev_next_version.sh 2 next 999.10.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_99_0 () {
    ret=$(../get_prev_next_version.sh 2 next 999.99.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_99_1 () {
    ret=$(../get_prev_next_version.sh 2 next 999.99.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_99_9 () {
    ret=$(../get_prev_next_version.sh 2 next 999.99.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_99_10 () {
    ret=$(../get_prev_next_version.sh 2 next 999.99.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_99_99 () {
    ret=$(../get_prev_next_version.sh 2 next 999.99.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_99_100 () {
    ret=$(../get_prev_next_version.sh 2 next 999.99.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_99_999 () {
    ret=$(../get_prev_next_version.sh 2 next 999.99.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_100_0 () {
    ret=$(../get_prev_next_version.sh 2 next 999.100.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_100_1 () {
    ret=$(../get_prev_next_version.sh 2 next 999.100.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_100_9 () {
    ret=$(../get_prev_next_version.sh 2 next 999.100.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_100_10 () {
    ret=$(../get_prev_next_version.sh 2 next 999.100.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_100_99 () {
    ret=$(../get_prev_next_version.sh 2 next 999.100.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_100_100 () {
    ret=$(../get_prev_next_version.sh 2 next 999.100.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_100_999 () {
    ret=$(../get_prev_next_version.sh 2 next 999.100.999)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_999_0 () {
    ret=$(../get_prev_next_version.sh 2 next 999.999.0)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_999_1 () {
    ret=$(../get_prev_next_version.sh 2 next 999.999.1)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_999_9 () {
    ret=$(../get_prev_next_version.sh 2 next 999.999.9)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_999_10 () {
    ret=$(../get_prev_next_version.sh 2 next 999.999.10)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_999_99 () {
    ret=$(../get_prev_next_version.sh 2 next 999.999.99)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_999_100 () {
    ret=$(../get_prev_next_version.sh 2 next 999.999.100)
    test "$ret" = "$err_field_size"
}

it_goes_next_2_comb_999_999_999 () {
    ret=$(../get_prev_next_version.sh 2 next 999.999.999)
    test "$ret" = "$err_field_size"
}


###############
## Forward 3 ##
###############

it_goes_next_3_comb_0_0_0 () {
    ret=$(../get_prev_next_version.sh 3 next 0.0.0)
    test "$ret" = "0.0.1"
}

it_goes_next_3_comb_0_0_1 () {
    ret=$(../get_prev_next_version.sh 3 next 0.0.1)
    test "$ret" = "0.0.2"
}

it_goes_next_3_comb_0_0_9 () {
    ret=$(../get_prev_next_version.sh 3 next 0.0.9)
    test "$ret" = "0.0.10"
}

it_goes_next_3_comb_0_0_10 () {
    ret=$(../get_prev_next_version.sh 3 next 0.0.10)
    test "$ret" = "0.0.11"
}

it_goes_next_3_comb_0_0_99 () {
    ret=$(../get_prev_next_version.sh 3 next 0.0.99)
    test "$ret" = "0.0.100"
}

it_goes_next_3_comb_0_0_100 () {
    ret=$(../get_prev_next_version.sh 3 next 0.0.100)
    test "$ret" = "0.0.101"
}

it_goes_next_3_comb_0_0_999 () {
    ret=$(../get_prev_next_version.sh 3 next 0.0.999)
    test "$ret" = "0.1.0"
}

it_goes_next_3_comb_0_1_0 () {
    ret=$(../get_prev_next_version.sh 3 next 0.1.0)
    test "$ret" = "0.1.1"
}

it_goes_next_3_comb_0_1_1 () {
    ret=$(../get_prev_next_version.sh 3 next 0.1.1)
    test "$ret" = "0.1.2"
}

it_goes_next_3_comb_0_1_9 () {
    ret=$(../get_prev_next_version.sh 3 next 0.1.9)
    test "$ret" = "0.1.10"
}

it_goes_next_3_comb_0_1_10 () {
    ret=$(../get_prev_next_version.sh 3 next 0.1.10)
    test "$ret" = "0.1.11"
}

it_goes_next_3_comb_0_1_99 () {
    ret=$(../get_prev_next_version.sh 3 next 0.1.99)
    test "$ret" = "0.1.100"
}

it_goes_next_3_comb_0_1_100 () {
    ret=$(../get_prev_next_version.sh 3 next 0.1.100)
    test "$ret" = "0.1.101"
}

it_goes_next_3_comb_0_1_999 () {
    ret=$(../get_prev_next_version.sh 3 next 0.1.999)
    test "$ret" = "0.2.0"
}

it_goes_next_3_comb_0_9_0 () {
    ret=$(../get_prev_next_version.sh 3 next 0.9.0)
    test "$ret" = "0.9.1"
}

it_goes_next_3_comb_0_9_1 () {
    ret=$(../get_prev_next_version.sh 3 next 0.9.1)
    test "$ret" = "0.9.2"
}

it_goes_next_3_comb_0_9_9 () {
    ret=$(../get_prev_next_version.sh 3 next 0.9.9)
    test "$ret" = "0.9.10"
}

it_goes_next_3_comb_0_9_10 () {
    ret=$(../get_prev_next_version.sh 3 next 0.9.10)
    test "$ret" = "0.9.11"
}

it_goes_next_3_comb_0_9_99 () {
    ret=$(../get_prev_next_version.sh 3 next 0.9.99)
    test "$ret" = "0.9.100"
}

it_goes_next_3_comb_0_9_100 () {
    ret=$(../get_prev_next_version.sh 3 next 0.9.100)
    test "$ret" = "0.9.101"
}

it_goes_next_3_comb_0_9_999 () {
    ret=$(../get_prev_next_version.sh 3 next 0.9.999)
    test "$ret" = "0.10.0"
}

it_goes_next_3_comb_0_10_0 () {
    ret=$(../get_prev_next_version.sh 3 next 0.10.0)
    test "$ret" = "0.10.1"
}

it_goes_next_3_comb_0_10_1 () {
    ret=$(../get_prev_next_version.sh 3 next 0.10.1)
    test "$ret" = "0.10.2"
}

it_goes_next_3_comb_0_10_9 () {
    ret=$(../get_prev_next_version.sh 3 next 0.10.9)
    test "$ret" = "0.10.10"
}

it_goes_next_3_comb_0_10_10 () {
    ret=$(../get_prev_next_version.sh 3 next 0.10.10)
    test "$ret" = "0.10.11"
}

it_goes_next_3_comb_0_10_99 () {
    ret=$(../get_prev_next_version.sh 3 next 0.10.99)
    test "$ret" = "0.10.100"
}

it_goes_next_3_comb_0_10_100 () {
    ret=$(../get_prev_next_version.sh 3 next 0.10.100)
    test "$ret" = "0.10.101"
}

it_goes_next_3_comb_0_10_999 () {
    ret=$(../get_prev_next_version.sh 3 next 0.10.999)
    test "$ret" = "0.11.0"
}

it_goes_next_3_comb_0_99_0 () {
    ret=$(../get_prev_next_version.sh 3 next 0.99.0)
    test "$ret" = "0.99.1"
}

it_goes_next_3_comb_0_99_1 () {
    ret=$(../get_prev_next_version.sh 3 next 0.99.1)
    test "$ret" = "0.99.2"
}

it_goes_next_3_comb_0_99_9 () {
    ret=$(../get_prev_next_version.sh 3 next 0.99.9)
    test "$ret" = "0.99.10"
}

it_goes_next_3_comb_0_99_10 () {
    ret=$(../get_prev_next_version.sh 3 next 0.99.10)
    test "$ret" = "0.99.11"
}

it_goes_next_3_comb_0_99_99 () {
    ret=$(../get_prev_next_version.sh 3 next 0.99.99)
    test "$ret" = "0.99.100"
}

it_goes_next_3_comb_0_99_100 () {
    ret=$(../get_prev_next_version.sh 3 next 0.99.100)
    test "$ret" = "0.99.101"
}

it_goes_next_3_comb_0_99_999 () {
    ret=$(../get_prev_next_version.sh 3 next 0.99.999)
    test "$ret" = "0.100.0"
}

it_goes_next_3_comb_0_100_0 () {
    ret=$(../get_prev_next_version.sh 3 next 0.100.0)
    test "$ret" = "0.100.1"
}

it_goes_next_3_comb_0_100_1 () {
    ret=$(../get_prev_next_version.sh 3 next 0.100.1)
    test "$ret" = "0.100.2"
}

it_goes_next_3_comb_0_100_9 () {
    ret=$(../get_prev_next_version.sh 3 next 0.100.9)
    test "$ret" = "0.100.10"
}

it_goes_next_3_comb_0_100_10 () {
    ret=$(../get_prev_next_version.sh 3 next 0.100.10)
    test "$ret" = "0.100.11"
}

it_goes_next_3_comb_0_100_99 () {
    ret=$(../get_prev_next_version.sh 3 next 0.100.99)
    test "$ret" = "0.100.100"
}

it_goes_next_3_comb_0_100_100 () {
    ret=$(../get_prev_next_version.sh 3 next 0.100.100)
    test "$ret" = "0.100.101"
}

it_goes_next_3_comb_0_100_999 () {
    ret=$(../get_prev_next_version.sh 3 next 0.100.999)
    test "$ret" = "0.101.0"
}

it_goes_next_3_comb_0_999_0 () {
    ret=$(../get_prev_next_version.sh 3 next 0.999.0)
    test "$ret" = "0.999.1"
}

it_goes_next_3_comb_0_999_1 () {
    ret=$(../get_prev_next_version.sh 3 next 0.999.1)
    test "$ret" = "0.999.2"
}

it_goes_next_3_comb_0_999_9 () {
    ret=$(../get_prev_next_version.sh 3 next 0.999.9)
    test "$ret" = "0.999.10"
}

it_goes_next_3_comb_0_999_10 () {
    ret=$(../get_prev_next_version.sh 3 next 0.999.10)
    test "$ret" = "0.999.11"
}

it_goes_next_3_comb_0_999_99 () {
    ret=$(../get_prev_next_version.sh 3 next 0.999.99)
    test "$ret" = "0.999.100"
}

it_goes_next_3_comb_0_999_100 () {
    ret=$(../get_prev_next_version.sh 3 next 0.999.100)
    test "$ret" = "0.999.101"
}

it_goes_next_3_comb_0_999_999 () {
    ret=$(../get_prev_next_version.sh 3 next 0.999.999)
    test "$ret" = "1.0.0"
}

it_goes_next_3_comb_1_0_0 () {
    ret=$(../get_prev_next_version.sh 3 next 1.0.0)
    test "$ret" = "1.0.1"
}

it_goes_next_3_comb_1_0_1 () {
    ret=$(../get_prev_next_version.sh 3 next 1.0.1)
    test "$ret" = "1.0.2"
}

it_goes_next_3_comb_1_0_9 () {
    ret=$(../get_prev_next_version.sh 3 next 1.0.9)
    test "$ret" = "1.0.10"
}

it_goes_next_3_comb_1_0_10 () {
    ret=$(../get_prev_next_version.sh 3 next 1.0.10)
    test "$ret" = "1.0.11"
}

it_goes_next_3_comb_1_0_99 () {
    ret=$(../get_prev_next_version.sh 3 next 1.0.99)
    test "$ret" = "1.0.100"
}

it_goes_next_3_comb_1_0_100 () {
    ret=$(../get_prev_next_version.sh 3 next 1.0.100)
    test "$ret" = "1.0.101"
}

it_goes_next_3_comb_1_0_999 () {
    ret=$(../get_prev_next_version.sh 3 next 1.0.999)
    test "$ret" = "1.1.0"
}

it_goes_next_3_comb_1_1_0 () {
    ret=$(../get_prev_next_version.sh 3 next 1.1.0)
    test "$ret" = "1.1.1"
}

it_goes_next_3_comb_1_1_1 () {
    ret=$(../get_prev_next_version.sh 3 next 1.1.1)
    test "$ret" = "1.1.2"
}

it_goes_next_3_comb_1_1_9 () {
    ret=$(../get_prev_next_version.sh 3 next 1.1.9)
    test "$ret" = "1.1.10"
}

it_goes_next_3_comb_1_1_10 () {
    ret=$(../get_prev_next_version.sh 3 next 1.1.10)
    test "$ret" = "1.1.11"
}

it_goes_next_3_comb_1_1_99 () {
    ret=$(../get_prev_next_version.sh 3 next 1.1.99)
    test "$ret" = "1.1.100"
}

it_goes_next_3_comb_1_1_100 () {
    ret=$(../get_prev_next_version.sh 3 next 1.1.100)
    test "$ret" = "1.1.101"
}

it_goes_next_3_comb_1_1_999 () {
    ret=$(../get_prev_next_version.sh 3 next 1.1.999)
    test "$ret" = "1.2.0"
}

it_goes_next_3_comb_1_9_0 () {
    ret=$(../get_prev_next_version.sh 3 next 1.9.0)
    test "$ret" = "1.9.1"
}

it_goes_next_3_comb_1_9_1 () {
    ret=$(../get_prev_next_version.sh 3 next 1.9.1)
    test "$ret" = "1.9.2"
}

it_goes_next_3_comb_1_9_9 () {
    ret=$(../get_prev_next_version.sh 3 next 1.9.9)
    test "$ret" = "1.9.10"
}

it_goes_next_3_comb_1_9_10 () {
    ret=$(../get_prev_next_version.sh 3 next 1.9.10)
    test "$ret" = "1.9.11"
}

it_goes_next_3_comb_1_9_99 () {
    ret=$(../get_prev_next_version.sh 3 next 1.9.99)
    test "$ret" = "1.9.100"
}

it_goes_next_3_comb_1_9_100 () {
    ret=$(../get_prev_next_version.sh 3 next 1.9.100)
    test "$ret" = "1.9.101"
}

it_goes_next_3_comb_1_9_999 () {
    ret=$(../get_prev_next_version.sh 3 next 1.9.999)
    test "$ret" = "1.10.0"
}

it_goes_next_3_comb_1_10_0 () {
    ret=$(../get_prev_next_version.sh 3 next 1.10.0)
    test "$ret" = "1.10.1"
}

it_goes_next_3_comb_1_10_1 () {
    ret=$(../get_prev_next_version.sh 3 next 1.10.1)
    test "$ret" = "1.10.2"
}

it_goes_next_3_comb_1_10_9 () {
    ret=$(../get_prev_next_version.sh 3 next 1.10.9)
    test "$ret" = "1.10.10"
}

it_goes_next_3_comb_1_10_10 () {
    ret=$(../get_prev_next_version.sh 3 next 1.10.10)
    test "$ret" = "1.10.11"
}

it_goes_next_3_comb_1_10_99 () {
    ret=$(../get_prev_next_version.sh 3 next 1.10.99)
    test "$ret" = "1.10.100"
}

it_goes_next_3_comb_1_10_100 () {
    ret=$(../get_prev_next_version.sh 3 next 1.10.100)
    test "$ret" = "1.10.101"
}

it_goes_next_3_comb_1_10_999 () {
    ret=$(../get_prev_next_version.sh 3 next 1.10.999)
    test "$ret" = "1.11.0"
}

it_goes_next_3_comb_1_99_0 () {
    ret=$(../get_prev_next_version.sh 3 next 1.99.0)
    test "$ret" = "1.99.1"
}

it_goes_next_3_comb_1_99_1 () {
    ret=$(../get_prev_next_version.sh 3 next 1.99.1)
    test "$ret" = "1.99.2"
}

it_goes_next_3_comb_1_99_9 () {
    ret=$(../get_prev_next_version.sh 3 next 1.99.9)
    test "$ret" = "1.99.10"
}

it_goes_next_3_comb_1_99_10 () {
    ret=$(../get_prev_next_version.sh 3 next 1.99.10)
    test "$ret" = "1.99.11"
}

it_goes_next_3_comb_1_99_99 () {
    ret=$(../get_prev_next_version.sh 3 next 1.99.99)
    test "$ret" = "1.99.100"
}

it_goes_next_3_comb_1_99_100 () {
    ret=$(../get_prev_next_version.sh 3 next 1.99.100)
    test "$ret" = "1.99.101"
}

it_goes_next_3_comb_1_99_999 () {
    ret=$(../get_prev_next_version.sh 3 next 1.99.999)
    test "$ret" = "1.100.0"
}

it_goes_next_3_comb_1_100_0 () {
    ret=$(../get_prev_next_version.sh 3 next 1.100.0)
    test "$ret" = "1.100.1"
}

it_goes_next_3_comb_1_100_1 () {
    ret=$(../get_prev_next_version.sh 3 next 1.100.1)
    test "$ret" = "1.100.2"
}

it_goes_next_3_comb_1_100_9 () {
    ret=$(../get_prev_next_version.sh 3 next 1.100.9)
    test "$ret" = "1.100.10"
}

it_goes_next_3_comb_1_100_10 () {
    ret=$(../get_prev_next_version.sh 3 next 1.100.10)
    test "$ret" = "1.100.11"
}

it_goes_next_3_comb_1_100_99 () {
    ret=$(../get_prev_next_version.sh 3 next 1.100.99)
    test "$ret" = "1.100.100"
}

it_goes_next_3_comb_1_100_100 () {
    ret=$(../get_prev_next_version.sh 3 next 1.100.100)
    test "$ret" = "1.100.101"
}

it_goes_next_3_comb_1_100_999 () {
    ret=$(../get_prev_next_version.sh 3 next 1.100.999)
    test "$ret" = "1.101.0"
}

it_goes_next_3_comb_1_999_0 () {
    ret=$(../get_prev_next_version.sh 3 next 1.999.0)
    test "$ret" = "1.999.1"
}

it_goes_next_3_comb_1_999_1 () {
    ret=$(../get_prev_next_version.sh 3 next 1.999.1)
    test "$ret" = "1.999.2"
}

it_goes_next_3_comb_1_999_9 () {
    ret=$(../get_prev_next_version.sh 3 next 1.999.9)
    test "$ret" = "1.999.10"
}

it_goes_next_3_comb_1_999_10 () {
    ret=$(../get_prev_next_version.sh 3 next 1.999.10)
    test "$ret" = "1.999.11"
}

it_goes_next_3_comb_1_999_99 () {
    ret=$(../get_prev_next_version.sh 3 next 1.999.99)
    test "$ret" = "1.999.100"
}

it_goes_next_3_comb_1_999_100 () {
    ret=$(../get_prev_next_version.sh 3 next 1.999.100)
    test "$ret" = "1.999.101"
}

it_goes_next_3_comb_1_999_999 () {
    ret=$(../get_prev_next_version.sh 3 next 1.999.999)
    test "$ret" = "2.0.0"
}

it_goes_next_3_comb_9_0_0 () {
    ret=$(../get_prev_next_version.sh 3 next 9.0.0)
    test "$ret" = "9.0.1"
}

it_goes_next_3_comb_9_0_1 () {
    ret=$(../get_prev_next_version.sh 3 next 9.0.1)
    test "$ret" = "9.0.2"
}

it_goes_next_3_comb_9_0_9 () {
    ret=$(../get_prev_next_version.sh 3 next 9.0.9)
    test "$ret" = "9.0.10"
}

it_goes_next_3_comb_9_0_10 () {
    ret=$(../get_prev_next_version.sh 3 next 9.0.10)
    test "$ret" = "9.0.11"
}

it_goes_next_3_comb_9_0_99 () {
    ret=$(../get_prev_next_version.sh 3 next 9.0.99)
    test "$ret" = "9.0.100"
}

it_goes_next_3_comb_9_0_100 () {
    ret=$(../get_prev_next_version.sh 3 next 9.0.100)
    test "$ret" = "9.0.101"
}

it_goes_next_3_comb_9_0_999 () {
    ret=$(../get_prev_next_version.sh 3 next 9.0.999)
    test "$ret" = "9.1.0"
}

it_goes_next_3_comb_9_1_0 () {
    ret=$(../get_prev_next_version.sh 3 next 9.1.0)
    test "$ret" = "9.1.1"
}

it_goes_next_3_comb_9_1_1 () {
    ret=$(../get_prev_next_version.sh 3 next 9.1.1)
    test "$ret" = "9.1.2"
}

it_goes_next_3_comb_9_1_9 () {
    ret=$(../get_prev_next_version.sh 3 next 9.1.9)
    test "$ret" = "9.1.10"
}

it_goes_next_3_comb_9_1_10 () {
    ret=$(../get_prev_next_version.sh 3 next 9.1.10)
    test "$ret" = "9.1.11"
}

it_goes_next_3_comb_9_1_99 () {
    ret=$(../get_prev_next_version.sh 3 next 9.1.99)
    test "$ret" = "9.1.100"
}

it_goes_next_3_comb_9_1_100 () {
    ret=$(../get_prev_next_version.sh 3 next 9.1.100)
    test "$ret" = "9.1.101"
}

it_goes_next_3_comb_9_1_999 () {
    ret=$(../get_prev_next_version.sh 3 next 9.1.999)
    test "$ret" = "9.2.0"
}

it_goes_next_3_comb_9_9_0 () {
    ret=$(../get_prev_next_version.sh 3 next 9.9.0)
    test "$ret" = "9.9.1"
}

it_goes_next_3_comb_9_9_1 () {
    ret=$(../get_prev_next_version.sh 3 next 9.9.1)
    test "$ret" = "9.9.2"
}

it_goes_next_3_comb_9_9_9 () {
    ret=$(../get_prev_next_version.sh 3 next 9.9.9)
    test "$ret" = "9.9.10"
}

it_goes_next_3_comb_9_9_10 () {
    ret=$(../get_prev_next_version.sh 3 next 9.9.10)
    test "$ret" = "9.9.11"
}

it_goes_next_3_comb_9_9_99 () {
    ret=$(../get_prev_next_version.sh 3 next 9.9.99)
    test "$ret" = "9.9.100"
}

it_goes_next_3_comb_9_9_100 () {
    ret=$(../get_prev_next_version.sh 3 next 9.9.100)
    test "$ret" = "9.9.101"
}

it_goes_next_3_comb_9_9_999 () {
    ret=$(../get_prev_next_version.sh 3 next 9.9.999)
    test "$ret" = "9.10.0"
}

it_goes_next_3_comb_9_10_0 () {
    ret=$(../get_prev_next_version.sh 3 next 9.10.0)
    test "$ret" = "9.10.1"
}

it_goes_next_3_comb_9_10_1 () {
    ret=$(../get_prev_next_version.sh 3 next 9.10.1)
    test "$ret" = "9.10.2"
}

it_goes_next_3_comb_9_10_9 () {
    ret=$(../get_prev_next_version.sh 3 next 9.10.9)
    test "$ret" = "9.10.10"
}

it_goes_next_3_comb_9_10_10 () {
    ret=$(../get_prev_next_version.sh 3 next 9.10.10)
    test "$ret" = "9.10.11"
}

it_goes_next_3_comb_9_10_99 () {
    ret=$(../get_prev_next_version.sh 3 next 9.10.99)
    test "$ret" = "9.10.100"
}

it_goes_next_3_comb_9_10_100 () {
    ret=$(../get_prev_next_version.sh 3 next 9.10.100)
    test "$ret" = "9.10.101"
}

it_goes_next_3_comb_9_10_999 () {
    ret=$(../get_prev_next_version.sh 3 next 9.10.999)
    test "$ret" = "9.11.0"
}

it_goes_next_3_comb_9_99_0 () {
    ret=$(../get_prev_next_version.sh 3 next 9.99.0)
    test "$ret" = "9.99.1"
}

it_goes_next_3_comb_9_99_1 () {
    ret=$(../get_prev_next_version.sh 3 next 9.99.1)
    test "$ret" = "9.99.2"
}

it_goes_next_3_comb_9_99_9 () {
    ret=$(../get_prev_next_version.sh 3 next 9.99.9)
    test "$ret" = "9.99.10"
}

it_goes_next_3_comb_9_99_10 () {
    ret=$(../get_prev_next_version.sh 3 next 9.99.10)
    test "$ret" = "9.99.11"
}

it_goes_next_3_comb_9_99_99 () {
    ret=$(../get_prev_next_version.sh 3 next 9.99.99)
    test "$ret" = "9.99.100"
}

it_goes_next_3_comb_9_99_100 () {
    ret=$(../get_prev_next_version.sh 3 next 9.99.100)
    test "$ret" = "9.99.101"
}

it_goes_next_3_comb_9_99_999 () {
    ret=$(../get_prev_next_version.sh 3 next 9.99.999)
    test "$ret" = "9.100.0"
}

it_goes_next_3_comb_9_100_0 () {
    ret=$(../get_prev_next_version.sh 3 next 9.100.0)
    test "$ret" = "9.100.1"
}

it_goes_next_3_comb_9_100_1 () {
    ret=$(../get_prev_next_version.sh 3 next 9.100.1)
    test "$ret" = "9.100.2"
}

it_goes_next_3_comb_9_100_9 () {
    ret=$(../get_prev_next_version.sh 3 next 9.100.9)
    test "$ret" = "9.100.10"
}

it_goes_next_3_comb_9_100_10 () {
    ret=$(../get_prev_next_version.sh 3 next 9.100.10)
    test "$ret" = "9.100.11"
}

it_goes_next_3_comb_9_100_99 () {
    ret=$(../get_prev_next_version.sh 3 next 9.100.99)
    test "$ret" = "9.100.100"
}

it_goes_next_3_comb_9_100_100 () {
    ret=$(../get_prev_next_version.sh 3 next 9.100.100)
    test "$ret" = "9.100.101"
}

it_goes_next_3_comb_9_100_999 () {
    ret=$(../get_prev_next_version.sh 3 next 9.100.999)
    test "$ret" = "9.101.0"
}

it_goes_next_3_comb_9_999_0 () {
    ret=$(../get_prev_next_version.sh 3 next 9.999.0)
    test "$ret" = "9.999.1"
}

it_goes_next_3_comb_9_999_1 () {
    ret=$(../get_prev_next_version.sh 3 next 9.999.1)
    test "$ret" = "9.999.2"
}

it_goes_next_3_comb_9_999_9 () {
    ret=$(../get_prev_next_version.sh 3 next 9.999.9)
    test "$ret" = "9.999.10"
}

it_goes_next_3_comb_9_999_10 () {
    ret=$(../get_prev_next_version.sh 3 next 9.999.10)
    test "$ret" = "9.999.11"
}

it_goes_next_3_comb_9_999_99 () {
    ret=$(../get_prev_next_version.sh 3 next 9.999.99)
    test "$ret" = "9.999.100"
}

it_goes_next_3_comb_9_999_100 () {
    ret=$(../get_prev_next_version.sh 3 next 9.999.100)
    test "$ret" = "9.999.101"
}

it_goes_next_3_comb_9_999_999 () {
    ret=$(../get_prev_next_version.sh 3 next 9.999.999)
    test "$ret" = "10.0.0"
}

it_goes_next_3_comb_10_0_0 () {
    ret=$(../get_prev_next_version.sh 3 next 10.0.0)
    test "$ret" = "10.0.1"
}

it_goes_next_3_comb_10_0_1 () {
    ret=$(../get_prev_next_version.sh 3 next 10.0.1)
    test "$ret" = "10.0.2"
}

it_goes_next_3_comb_10_0_9 () {
    ret=$(../get_prev_next_version.sh 3 next 10.0.9)
    test "$ret" = "10.0.10"
}

it_goes_next_3_comb_10_0_10 () {
    ret=$(../get_prev_next_version.sh 3 next 10.0.10)
    test "$ret" = "10.0.11"
}

it_goes_next_3_comb_10_0_99 () {
    ret=$(../get_prev_next_version.sh 3 next 10.0.99)
    test "$ret" = "10.0.100"
}

it_goes_next_3_comb_10_0_100 () {
    ret=$(../get_prev_next_version.sh 3 next 10.0.100)
    test "$ret" = "10.0.101"
}

it_goes_next_3_comb_10_0_999 () {
    ret=$(../get_prev_next_version.sh 3 next 10.0.999)
    test "$ret" = "10.1.0"
}

it_goes_next_3_comb_10_1_0 () {
    ret=$(../get_prev_next_version.sh 3 next 10.1.0)
    test "$ret" = "10.1.1"
}

it_goes_next_3_comb_10_1_1 () {
    ret=$(../get_prev_next_version.sh 3 next 10.1.1)
    test "$ret" = "10.1.2"
}

it_goes_next_3_comb_10_1_9 () {
    ret=$(../get_prev_next_version.sh 3 next 10.1.9)
    test "$ret" = "10.1.10"
}

it_goes_next_3_comb_10_1_10 () {
    ret=$(../get_prev_next_version.sh 3 next 10.1.10)
    test "$ret" = "10.1.11"
}

it_goes_next_3_comb_10_1_99 () {
    ret=$(../get_prev_next_version.sh 3 next 10.1.99)
    test "$ret" = "10.1.100"
}

it_goes_next_3_comb_10_1_100 () {
    ret=$(../get_prev_next_version.sh 3 next 10.1.100)
    test "$ret" = "10.1.101"
}

it_goes_next_3_comb_10_1_999 () {
    ret=$(../get_prev_next_version.sh 3 next 10.1.999)
    test "$ret" = "10.2.0"
}

it_goes_next_3_comb_10_9_0 () {
    ret=$(../get_prev_next_version.sh 3 next 10.9.0)
    test "$ret" = "10.9.1"
}

it_goes_next_3_comb_10_9_1 () {
    ret=$(../get_prev_next_version.sh 3 next 10.9.1)
    test "$ret" = "10.9.2"
}

it_goes_next_3_comb_10_9_9 () {
    ret=$(../get_prev_next_version.sh 3 next 10.9.9)
    test "$ret" = "10.9.10"
}

it_goes_next_3_comb_10_9_10 () {
    ret=$(../get_prev_next_version.sh 3 next 10.9.10)
    test "$ret" = "10.9.11"
}

it_goes_next_3_comb_10_9_99 () {
    ret=$(../get_prev_next_version.sh 3 next 10.9.99)
    test "$ret" = "10.9.100"
}

it_goes_next_3_comb_10_9_100 () {
    ret=$(../get_prev_next_version.sh 3 next 10.9.100)
    test "$ret" = "10.9.101"
}

it_goes_next_3_comb_10_9_999 () {
    ret=$(../get_prev_next_version.sh 3 next 10.9.999)
    test "$ret" = "10.10.0"
}

it_goes_next_3_comb_10_10_0 () {
    ret=$(../get_prev_next_version.sh 3 next 10.10.0)
    test "$ret" = "10.10.1"
}

it_goes_next_3_comb_10_10_1 () {
    ret=$(../get_prev_next_version.sh 3 next 10.10.1)
    test "$ret" = "10.10.2"
}

it_goes_next_3_comb_10_10_9 () {
    ret=$(../get_prev_next_version.sh 3 next 10.10.9)
    test "$ret" = "10.10.10"
}

it_goes_next_3_comb_10_10_10 () {
    ret=$(../get_prev_next_version.sh 3 next 10.10.10)
    test "$ret" = "10.10.11"
}

it_goes_next_3_comb_10_10_99 () {
    ret=$(../get_prev_next_version.sh 3 next 10.10.99)
    test "$ret" = "10.10.100"
}

it_goes_next_3_comb_10_10_100 () {
    ret=$(../get_prev_next_version.sh 3 next 10.10.100)
    test "$ret" = "10.10.101"
}

it_goes_next_3_comb_10_10_999 () {
    ret=$(../get_prev_next_version.sh 3 next 10.10.999)
    test "$ret" = "10.11.0"
}

it_goes_next_3_comb_10_99_0 () {
    ret=$(../get_prev_next_version.sh 3 next 10.99.0)
    test "$ret" = "10.99.1"
}

it_goes_next_3_comb_10_99_1 () {
    ret=$(../get_prev_next_version.sh 3 next 10.99.1)
    test "$ret" = "10.99.2"
}

it_goes_next_3_comb_10_99_9 () {
    ret=$(../get_prev_next_version.sh 3 next 10.99.9)
    test "$ret" = "10.99.10"
}

it_goes_next_3_comb_10_99_10 () {
    ret=$(../get_prev_next_version.sh 3 next 10.99.10)
    test "$ret" = "10.99.11"
}

it_goes_next_3_comb_10_99_99 () {
    ret=$(../get_prev_next_version.sh 3 next 10.99.99)
    test "$ret" = "10.99.100"
}

it_goes_next_3_comb_10_99_100 () {
    ret=$(../get_prev_next_version.sh 3 next 10.99.100)
    test "$ret" = "10.99.101"
}

it_goes_next_3_comb_10_99_999 () {
    ret=$(../get_prev_next_version.sh 3 next 10.99.999)
    test "$ret" = "10.100.0"
}

it_goes_next_3_comb_10_100_0 () {
    ret=$(../get_prev_next_version.sh 3 next 10.100.0)
    test "$ret" = "10.100.1"
}

it_goes_next_3_comb_10_100_1 () {
    ret=$(../get_prev_next_version.sh 3 next 10.100.1)
    test "$ret" = "10.100.2"
}

it_goes_next_3_comb_10_100_9 () {
    ret=$(../get_prev_next_version.sh 3 next 10.100.9)
    test "$ret" = "10.100.10"
}

it_goes_next_3_comb_10_100_10 () {
    ret=$(../get_prev_next_version.sh 3 next 10.100.10)
    test "$ret" = "10.100.11"
}

it_goes_next_3_comb_10_100_99 () {
    ret=$(../get_prev_next_version.sh 3 next 10.100.99)
    test "$ret" = "10.100.100"
}

it_goes_next_3_comb_10_100_100 () {
    ret=$(../get_prev_next_version.sh 3 next 10.100.100)
    test "$ret" = "10.100.101"
}

it_goes_next_3_comb_10_100_999 () {
    ret=$(../get_prev_next_version.sh 3 next 10.100.999)
    test "$ret" = "10.101.0"
}

it_goes_next_3_comb_10_999_0 () {
    ret=$(../get_prev_next_version.sh 3 next 10.999.0)
    test "$ret" = "10.999.1"
}

it_goes_next_3_comb_10_999_1 () {
    ret=$(../get_prev_next_version.sh 3 next 10.999.1)
    test "$ret" = "10.999.2"
}

it_goes_next_3_comb_10_999_9 () {
    ret=$(../get_prev_next_version.sh 3 next 10.999.9)
    test "$ret" = "10.999.10"
}

it_goes_next_3_comb_10_999_10 () {
    ret=$(../get_prev_next_version.sh 3 next 10.999.10)
    test "$ret" = "10.999.11"
}

it_goes_next_3_comb_10_999_99 () {
    ret=$(../get_prev_next_version.sh 3 next 10.999.99)
    test "$ret" = "10.999.100"
}

it_goes_next_3_comb_10_999_100 () {
    ret=$(../get_prev_next_version.sh 3 next 10.999.100)
    test "$ret" = "10.999.101"
}

it_goes_next_3_comb_10_999_999 () {
    ret=$(../get_prev_next_version.sh 3 next 10.999.999)
    test "$ret" = "11.0.0"
}

it_goes_next_3_comb_99_0_0 () {
    ret=$(../get_prev_next_version.sh 3 next 99.0.0)
    test "$ret" = "99.0.1"
}

it_goes_next_3_comb_99_0_1 () {
    ret=$(../get_prev_next_version.sh 3 next 99.0.1)
    test "$ret" = "99.0.2"
}

it_goes_next_3_comb_99_0_9 () {
    ret=$(../get_prev_next_version.sh 3 next 99.0.9)
    test "$ret" = "99.0.10"
}

it_goes_next_3_comb_99_0_10 () {
    ret=$(../get_prev_next_version.sh 3 next 99.0.10)
    test "$ret" = "99.0.11"
}

it_goes_next_3_comb_99_0_99 () {
    ret=$(../get_prev_next_version.sh 3 next 99.0.99)
    test "$ret" = "99.0.100"
}

it_goes_next_3_comb_99_0_100 () {
    ret=$(../get_prev_next_version.sh 3 next 99.0.100)
    test "$ret" = "99.0.101"
}

it_goes_next_3_comb_99_0_999 () {
    ret=$(../get_prev_next_version.sh 3 next 99.0.999)
    test "$ret" = "99.1.0"
}

it_goes_next_3_comb_99_1_0 () {
    ret=$(../get_prev_next_version.sh 3 next 99.1.0)
    test "$ret" = "99.1.1"
}

it_goes_next_3_comb_99_1_1 () {
    ret=$(../get_prev_next_version.sh 3 next 99.1.1)
    test "$ret" = "99.1.2"
}

it_goes_next_3_comb_99_1_9 () {
    ret=$(../get_prev_next_version.sh 3 next 99.1.9)
    test "$ret" = "99.1.10"
}

it_goes_next_3_comb_99_1_10 () {
    ret=$(../get_prev_next_version.sh 3 next 99.1.10)
    test "$ret" = "99.1.11"
}

it_goes_next_3_comb_99_1_99 () {
    ret=$(../get_prev_next_version.sh 3 next 99.1.99)
    test "$ret" = "99.1.100"
}

it_goes_next_3_comb_99_1_100 () {
    ret=$(../get_prev_next_version.sh 3 next 99.1.100)
    test "$ret" = "99.1.101"
}

it_goes_next_3_comb_99_1_999 () {
    ret=$(../get_prev_next_version.sh 3 next 99.1.999)
    test "$ret" = "99.2.0"
}

it_goes_next_3_comb_99_9_0 () {
    ret=$(../get_prev_next_version.sh 3 next 99.9.0)
    test "$ret" = "99.9.1"
}

it_goes_next_3_comb_99_9_1 () {
    ret=$(../get_prev_next_version.sh 3 next 99.9.1)
    test "$ret" = "99.9.2"
}

it_goes_next_3_comb_99_9_9 () {
    ret=$(../get_prev_next_version.sh 3 next 99.9.9)
    test "$ret" = "99.9.10"
}

it_goes_next_3_comb_99_9_10 () {
    ret=$(../get_prev_next_version.sh 3 next 99.9.10)
    test "$ret" = "99.9.11"
}

it_goes_next_3_comb_99_9_99 () {
    ret=$(../get_prev_next_version.sh 3 next 99.9.99)
    test "$ret" = "99.9.100"
}

it_goes_next_3_comb_99_9_100 () {
    ret=$(../get_prev_next_version.sh 3 next 99.9.100)
    test "$ret" = "99.9.101"
}

it_goes_next_3_comb_99_9_999 () {
    ret=$(../get_prev_next_version.sh 3 next 99.9.999)
    test "$ret" = "99.10.0"
}

it_goes_next_3_comb_99_10_0 () {
    ret=$(../get_prev_next_version.sh 3 next 99.10.0)
    test "$ret" = "99.10.1"
}

it_goes_next_3_comb_99_10_1 () {
    ret=$(../get_prev_next_version.sh 3 next 99.10.1)
    test "$ret" = "99.10.2"
}

it_goes_next_3_comb_99_10_9 () {
    ret=$(../get_prev_next_version.sh 3 next 99.10.9)
    test "$ret" = "99.10.10"
}

it_goes_next_3_comb_99_10_10 () {
    ret=$(../get_prev_next_version.sh 3 next 99.10.10)
    test "$ret" = "99.10.11"
}

it_goes_next_3_comb_99_10_99 () {
    ret=$(../get_prev_next_version.sh 3 next 99.10.99)
    test "$ret" = "99.10.100"
}

it_goes_next_3_comb_99_10_100 () {
    ret=$(../get_prev_next_version.sh 3 next 99.10.100)
    test "$ret" = "99.10.101"
}

it_goes_next_3_comb_99_10_999 () {
    ret=$(../get_prev_next_version.sh 3 next 99.10.999)
    test "$ret" = "99.11.0"
}

it_goes_next_3_comb_99_99_0 () {
    ret=$(../get_prev_next_version.sh 3 next 99.99.0)
    test "$ret" = "99.99.1"
}

it_goes_next_3_comb_99_99_1 () {
    ret=$(../get_prev_next_version.sh 3 next 99.99.1)
    test "$ret" = "99.99.2"
}

it_goes_next_3_comb_99_99_9 () {
    ret=$(../get_prev_next_version.sh 3 next 99.99.9)
    test "$ret" = "99.99.10"
}

it_goes_next_3_comb_99_99_10 () {
    ret=$(../get_prev_next_version.sh 3 next 99.99.10)
    test "$ret" = "99.99.11"
}

it_goes_next_3_comb_99_99_99 () {
    ret=$(../get_prev_next_version.sh 3 next 99.99.99)
    test "$ret" = "99.99.100"
}

it_goes_next_3_comb_99_99_100 () {
    ret=$(../get_prev_next_version.sh 3 next 99.99.100)
    test "$ret" = "99.99.101"
}

it_goes_next_3_comb_99_99_999 () {
    ret=$(../get_prev_next_version.sh 3 next 99.99.999)
    test "$ret" = "99.100.0"
}

it_goes_next_3_comb_99_100_0 () {
    ret=$(../get_prev_next_version.sh 3 next 99.100.0)
    test "$ret" = "99.100.1"
}

it_goes_next_3_comb_99_100_1 () {
    ret=$(../get_prev_next_version.sh 3 next 99.100.1)
    test "$ret" = "99.100.2"
}

it_goes_next_3_comb_99_100_9 () {
    ret=$(../get_prev_next_version.sh 3 next 99.100.9)
    test "$ret" = "99.100.10"
}

it_goes_next_3_comb_99_100_10 () {
    ret=$(../get_prev_next_version.sh 3 next 99.100.10)
    test "$ret" = "99.100.11"
}

it_goes_next_3_comb_99_100_99 () {
    ret=$(../get_prev_next_version.sh 3 next 99.100.99)
    test "$ret" = "99.100.100"
}

it_goes_next_3_comb_99_100_100 () {
    ret=$(../get_prev_next_version.sh 3 next 99.100.100)
    test "$ret" = "99.100.101"
}

it_goes_next_3_comb_99_100_999 () {
    ret=$(../get_prev_next_version.sh 3 next 99.100.999)
    test "$ret" = "99.101.0"
}

it_goes_next_3_comb_99_999_0 () {
    ret=$(../get_prev_next_version.sh 3 next 99.999.0)
    test "$ret" = "99.999.1"
}

it_goes_next_3_comb_99_999_1 () {
    ret=$(../get_prev_next_version.sh 3 next 99.999.1)
    test "$ret" = "99.999.2"
}

it_goes_next_3_comb_99_999_9 () {
    ret=$(../get_prev_next_version.sh 3 next 99.999.9)
    test "$ret" = "99.999.10"
}

it_goes_next_3_comb_99_999_10 () {
    ret=$(../get_prev_next_version.sh 3 next 99.999.10)
    test "$ret" = "99.999.11"
}

it_goes_next_3_comb_99_999_99 () {
    ret=$(../get_prev_next_version.sh 3 next 99.999.99)
    test "$ret" = "99.999.100"
}

it_goes_next_3_comb_99_999_100 () {
    ret=$(../get_prev_next_version.sh 3 next 99.999.100)
    test "$ret" = "99.999.101"
}

it_goes_next_3_comb_99_999_999 () {
    ret=$(../get_prev_next_version.sh 3 next 99.999.999)
    test "$ret" = "100.0.0"
}

it_goes_next_3_comb_100_0_0 () {
    ret=$(../get_prev_next_version.sh 3 next 100.0.0)
    test "$ret" = "100.0.1"
}

it_goes_next_3_comb_100_0_1 () {
    ret=$(../get_prev_next_version.sh 3 next 100.0.1)
    test "$ret" = "100.0.2"
}

it_goes_next_3_comb_100_0_9 () {
    ret=$(../get_prev_next_version.sh 3 next 100.0.9)
    test "$ret" = "100.0.10"
}

it_goes_next_3_comb_100_0_10 () {
    ret=$(../get_prev_next_version.sh 3 next 100.0.10)
    test "$ret" = "100.0.11"
}

it_goes_next_3_comb_100_0_99 () {
    ret=$(../get_prev_next_version.sh 3 next 100.0.99)
    test "$ret" = "100.0.100"
}

it_goes_next_3_comb_100_0_100 () {
    ret=$(../get_prev_next_version.sh 3 next 100.0.100)
    test "$ret" = "100.0.101"
}

it_goes_next_3_comb_100_0_999 () {
    ret=$(../get_prev_next_version.sh 3 next 100.0.999)
    test "$ret" = "100.1.0"
}

it_goes_next_3_comb_100_1_0 () {
    ret=$(../get_prev_next_version.sh 3 next 100.1.0)
    test "$ret" = "100.1.1"
}

it_goes_next_3_comb_100_1_1 () {
    ret=$(../get_prev_next_version.sh 3 next 100.1.1)
    test "$ret" = "100.1.2"
}

it_goes_next_3_comb_100_1_9 () {
    ret=$(../get_prev_next_version.sh 3 next 100.1.9)
    test "$ret" = "100.1.10"
}

it_goes_next_3_comb_100_1_10 () {
    ret=$(../get_prev_next_version.sh 3 next 100.1.10)
    test "$ret" = "100.1.11"
}

it_goes_next_3_comb_100_1_99 () {
    ret=$(../get_prev_next_version.sh 3 next 100.1.99)
    test "$ret" = "100.1.100"
}

it_goes_next_3_comb_100_1_100 () {
    ret=$(../get_prev_next_version.sh 3 next 100.1.100)
    test "$ret" = "100.1.101"
}

it_goes_next_3_comb_100_1_999 () {
    ret=$(../get_prev_next_version.sh 3 next 100.1.999)
    test "$ret" = "100.2.0"
}

it_goes_next_3_comb_100_9_0 () {
    ret=$(../get_prev_next_version.sh 3 next 100.9.0)
    test "$ret" = "100.9.1"
}

it_goes_next_3_comb_100_9_1 () {
    ret=$(../get_prev_next_version.sh 3 next 100.9.1)
    test "$ret" = "100.9.2"
}

it_goes_next_3_comb_100_9_9 () {
    ret=$(../get_prev_next_version.sh 3 next 100.9.9)
    test "$ret" = "100.9.10"
}

it_goes_next_3_comb_100_9_10 () {
    ret=$(../get_prev_next_version.sh 3 next 100.9.10)
    test "$ret" = "100.9.11"
}

it_goes_next_3_comb_100_9_99 () {
    ret=$(../get_prev_next_version.sh 3 next 100.9.99)
    test "$ret" = "100.9.100"
}

it_goes_next_3_comb_100_9_100 () {
    ret=$(../get_prev_next_version.sh 3 next 100.9.100)
    test "$ret" = "100.9.101"
}

it_goes_next_3_comb_100_9_999 () {
    ret=$(../get_prev_next_version.sh 3 next 100.9.999)
    test "$ret" = "100.10.0"
}

it_goes_next_3_comb_100_10_0 () {
    ret=$(../get_prev_next_version.sh 3 next 100.10.0)
    test "$ret" = "100.10.1"
}

it_goes_next_3_comb_100_10_1 () {
    ret=$(../get_prev_next_version.sh 3 next 100.10.1)
    test "$ret" = "100.10.2"
}

it_goes_next_3_comb_100_10_9 () {
    ret=$(../get_prev_next_version.sh 3 next 100.10.9)
    test "$ret" = "100.10.10"
}

it_goes_next_3_comb_100_10_10 () {
    ret=$(../get_prev_next_version.sh 3 next 100.10.10)
    test "$ret" = "100.10.11"
}

it_goes_next_3_comb_100_10_99 () {
    ret=$(../get_prev_next_version.sh 3 next 100.10.99)
    test "$ret" = "100.10.100"
}

it_goes_next_3_comb_100_10_100 () {
    ret=$(../get_prev_next_version.sh 3 next 100.10.100)
    test "$ret" = "100.10.101"
}

it_goes_next_3_comb_100_10_999 () {
    ret=$(../get_prev_next_version.sh 3 next 100.10.999)
    test "$ret" = "100.11.0"
}

it_goes_next_3_comb_100_99_0 () {
    ret=$(../get_prev_next_version.sh 3 next 100.99.0)
    test "$ret" = "100.99.1"
}

it_goes_next_3_comb_100_99_1 () {
    ret=$(../get_prev_next_version.sh 3 next 100.99.1)
    test "$ret" = "100.99.2"
}

it_goes_next_3_comb_100_99_9 () {
    ret=$(../get_prev_next_version.sh 3 next 100.99.9)
    test "$ret" = "100.99.10"
}

it_goes_next_3_comb_100_99_10 () {
    ret=$(../get_prev_next_version.sh 3 next 100.99.10)
    test "$ret" = "100.99.11"
}

it_goes_next_3_comb_100_99_99 () {
    ret=$(../get_prev_next_version.sh 3 next 100.99.99)
    test "$ret" = "100.99.100"
}

it_goes_next_3_comb_100_99_100 () {
    ret=$(../get_prev_next_version.sh 3 next 100.99.100)
    test "$ret" = "100.99.101"
}

it_goes_next_3_comb_100_99_999 () {
    ret=$(../get_prev_next_version.sh 3 next 100.99.999)
    test "$ret" = "100.100.0"
}

it_goes_next_3_comb_100_100_0 () {
    ret=$(../get_prev_next_version.sh 3 next 100.100.0)
    test "$ret" = "100.100.1"
}

it_goes_next_3_comb_100_100_1 () {
    ret=$(../get_prev_next_version.sh 3 next 100.100.1)
    test "$ret" = "100.100.2"
}

it_goes_next_3_comb_100_100_9 () {
    ret=$(../get_prev_next_version.sh 3 next 100.100.9)
    test "$ret" = "100.100.10"
}

it_goes_next_3_comb_100_100_10 () {
    ret=$(../get_prev_next_version.sh 3 next 100.100.10)
    test "$ret" = "100.100.11"
}

it_goes_next_3_comb_100_100_99 () {
    ret=$(../get_prev_next_version.sh 3 next 100.100.99)
    test "$ret" = "100.100.100"
}

it_goes_next_3_comb_100_100_100 () {
    ret=$(../get_prev_next_version.sh 3 next 100.100.100)
    test "$ret" = "100.100.101"
}

it_goes_next_3_comb_100_100_999 () {
    ret=$(../get_prev_next_version.sh 3 next 100.100.999)
    test "$ret" = "100.101.0"
}

it_goes_next_3_comb_100_999_0 () {
    ret=$(../get_prev_next_version.sh 3 next 100.999.0)
    test "$ret" = "100.999.1"
}

it_goes_next_3_comb_100_999_1 () {
    ret=$(../get_prev_next_version.sh 3 next 100.999.1)
    test "$ret" = "100.999.2"
}

it_goes_next_3_comb_100_999_9 () {
    ret=$(../get_prev_next_version.sh 3 next 100.999.9)
    test "$ret" = "100.999.10"
}

it_goes_next_3_comb_100_999_10 () {
    ret=$(../get_prev_next_version.sh 3 next 100.999.10)
    test "$ret" = "100.999.11"
}

it_goes_next_3_comb_100_999_99 () {
    ret=$(../get_prev_next_version.sh 3 next 100.999.99)
    test "$ret" = "100.999.100"
}

it_goes_next_3_comb_100_999_100 () {
    ret=$(../get_prev_next_version.sh 3 next 100.999.100)
    test "$ret" = "100.999.101"
}

it_goes_next_3_comb_100_999_999 () {
    ret=$(../get_prev_next_version.sh 3 next 100.999.999)
    test "$ret" = "101.0.0"
}

it_goes_next_3_comb_999_0_0 () {
    ret=$(../get_prev_next_version.sh 3 next 999.0.0)
    test "$ret" = "999.0.1"
}

it_goes_next_3_comb_999_0_1 () {
    ret=$(../get_prev_next_version.sh 3 next 999.0.1)
    test "$ret" = "999.0.2"
}

it_goes_next_3_comb_999_0_9 () {
    ret=$(../get_prev_next_version.sh 3 next 999.0.9)
    test "$ret" = "999.0.10"
}

it_goes_next_3_comb_999_0_10 () {
    ret=$(../get_prev_next_version.sh 3 next 999.0.10)
    test "$ret" = "999.0.11"
}

it_goes_next_3_comb_999_0_99 () {
    ret=$(../get_prev_next_version.sh 3 next 999.0.99)
    test "$ret" = "999.0.100"
}

it_goes_next_3_comb_999_0_100 () {
    ret=$(../get_prev_next_version.sh 3 next 999.0.100)
    test "$ret" = "999.0.101"
}

it_goes_next_3_comb_999_0_999 () {
    ret=$(../get_prev_next_version.sh 3 next 999.0.999)
    test "$ret" = "999.1.0"
}

it_goes_next_3_comb_999_1_0 () {
    ret=$(../get_prev_next_version.sh 3 next 999.1.0)
    test "$ret" = "999.1.1"
}

it_goes_next_3_comb_999_1_1 () {
    ret=$(../get_prev_next_version.sh 3 next 999.1.1)
    test "$ret" = "999.1.2"
}

it_goes_next_3_comb_999_1_9 () {
    ret=$(../get_prev_next_version.sh 3 next 999.1.9)
    test "$ret" = "999.1.10"
}

it_goes_next_3_comb_999_1_10 () {
    ret=$(../get_prev_next_version.sh 3 next 999.1.10)
    test "$ret" = "999.1.11"
}

it_goes_next_3_comb_999_1_99 () {
    ret=$(../get_prev_next_version.sh 3 next 999.1.99)
    test "$ret" = "999.1.100"
}

it_goes_next_3_comb_999_1_100 () {
    ret=$(../get_prev_next_version.sh 3 next 999.1.100)
    test "$ret" = "999.1.101"
}

it_goes_next_3_comb_999_1_999 () {
    ret=$(../get_prev_next_version.sh 3 next 999.1.999)
    test "$ret" = "999.2.0"
}

it_goes_next_3_comb_999_9_0 () {
    ret=$(../get_prev_next_version.sh 3 next 999.9.0)
    test "$ret" = "999.9.1"
}

it_goes_next_3_comb_999_9_1 () {
    ret=$(../get_prev_next_version.sh 3 next 999.9.1)
    test "$ret" = "999.9.2"
}

it_goes_next_3_comb_999_9_9 () {
    ret=$(../get_prev_next_version.sh 3 next 999.9.9)
    test "$ret" = "999.9.10"
}

it_goes_next_3_comb_999_9_10 () {
    ret=$(../get_prev_next_version.sh 3 next 999.9.10)
    test "$ret" = "999.9.11"
}

it_goes_next_3_comb_999_9_99 () {
    ret=$(../get_prev_next_version.sh 3 next 999.9.99)
    test "$ret" = "999.9.100"
}

it_goes_next_3_comb_999_9_100 () {
    ret=$(../get_prev_next_version.sh 3 next 999.9.100)
    test "$ret" = "999.9.101"
}

it_goes_next_3_comb_999_9_999 () {
    ret=$(../get_prev_next_version.sh 3 next 999.9.999)
    test "$ret" = "999.10.0"
}

it_goes_next_3_comb_999_10_0 () {
    ret=$(../get_prev_next_version.sh 3 next 999.10.0)
    test "$ret" = "999.10.1"
}

it_goes_next_3_comb_999_10_1 () {
    ret=$(../get_prev_next_version.sh 3 next 999.10.1)
    test "$ret" = "999.10.2"
}

it_goes_next_3_comb_999_10_9 () {
    ret=$(../get_prev_next_version.sh 3 next 999.10.9)
    test "$ret" = "999.10.10"
}

it_goes_next_3_comb_999_10_10 () {
    ret=$(../get_prev_next_version.sh 3 next 999.10.10)
    test "$ret" = "999.10.11"
}

it_goes_next_3_comb_999_10_99 () {
    ret=$(../get_prev_next_version.sh 3 next 999.10.99)
    test "$ret" = "999.10.100"
}

it_goes_next_3_comb_999_10_100 () {
    ret=$(../get_prev_next_version.sh 3 next 999.10.100)
    test "$ret" = "999.10.101"
}

it_goes_next_3_comb_999_10_999 () {
    ret=$(../get_prev_next_version.sh 3 next 999.10.999)
    test "$ret" = "999.11.0"
}

it_goes_next_3_comb_999_99_0 () {
    ret=$(../get_prev_next_version.sh 3 next 999.99.0)
    test "$ret" = "999.99.1"
}

it_goes_next_3_comb_999_99_1 () {
    ret=$(../get_prev_next_version.sh 3 next 999.99.1)
    test "$ret" = "999.99.2"
}

it_goes_next_3_comb_999_99_9 () {
    ret=$(../get_prev_next_version.sh 3 next 999.99.9)
    test "$ret" = "999.99.10"
}

it_goes_next_3_comb_999_99_10 () {
    ret=$(../get_prev_next_version.sh 3 next 999.99.10)
    test "$ret" = "999.99.11"
}

it_goes_next_3_comb_999_99_99 () {
    ret=$(../get_prev_next_version.sh 3 next 999.99.99)
    test "$ret" = "999.99.100"
}

it_goes_next_3_comb_999_99_100 () {
    ret=$(../get_prev_next_version.sh 3 next 999.99.100)
    test "$ret" = "999.99.101"
}

it_goes_next_3_comb_999_99_999 () {
    ret=$(../get_prev_next_version.sh 3 next 999.99.999)
    test "$ret" = "999.100.0"
}

it_goes_next_3_comb_999_100_0 () {
    ret=$(../get_prev_next_version.sh 3 next 999.100.0)
    test "$ret" = "999.100.1"
}

it_goes_next_3_comb_999_100_1 () {
    ret=$(../get_prev_next_version.sh 3 next 999.100.1)
    test "$ret" = "999.100.2"
}

it_goes_next_3_comb_999_100_9 () {
    ret=$(../get_prev_next_version.sh 3 next 999.100.9)
    test "$ret" = "999.100.10"
}

it_goes_next_3_comb_999_100_10 () {
    ret=$(../get_prev_next_version.sh 3 next 999.100.10)
    test "$ret" = "999.100.11"
}

it_goes_next_3_comb_999_100_99 () {
    ret=$(../get_prev_next_version.sh 3 next 999.100.99)
    test "$ret" = "999.100.100"
}

it_goes_next_3_comb_999_100_100 () {
    ret=$(../get_prev_next_version.sh 3 next 999.100.100)
    test "$ret" = "999.100.101"
}

it_goes_next_3_comb_999_100_999 () {
    ret=$(../get_prev_next_version.sh 3 next 999.100.999)
    test "$ret" = "999.101.0"
}

it_goes_next_3_comb_999_999_0 () {
    ret=$(../get_prev_next_version.sh 3 next 999.999.0)
    test "$ret" = "999.999.1"
}

it_goes_next_3_comb_999_999_1 () {
    ret=$(../get_prev_next_version.sh 3 next 999.999.1)
    test "$ret" = "999.999.2"
}

it_goes_next_3_comb_999_999_9 () {
    ret=$(../get_prev_next_version.sh 3 next 999.999.9)
    test "$ret" = "999.999.10"
}

it_goes_next_3_comb_999_999_10 () {
    ret=$(../get_prev_next_version.sh 3 next 999.999.10)
    test "$ret" = "999.999.11"
}

it_goes_next_3_comb_999_999_99 () {
    ret=$(../get_prev_next_version.sh 3 next 999.999.99)
    test "$ret" = "999.999.100"
}

it_goes_next_3_comb_999_999_100 () {
    ret=$(../get_prev_next_version.sh 3 next 999.999.100)
    test "$ret" = "999.999.101"
}

it_goes_next_3_comb_999_999_999 () {
    ret=$(../get_prev_next_version.sh 3 next 999.999.999)
    test "$ret" = "999.999.999.1"
}

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
# basic-test.sh
#
# Created:  Nov 10, 2011
# Author:   Rogério Carvalho Schneider <stockrt@gmail.com>


#############
## DEFINES ##
#############

err_field_size="ERR: Verify field size and version number coherency."
err_field_size_type="ERR: Wrong field size type. This is not a number:"
err_field_size_value="ERR: Wrong field size value. Must be greater than zero."
err_command_type="ERR: Wrong command type. This is not a valid command:"
err_version_type="ERR: Wrong version type. This is not a valid version number:"
usage_message="Usage: get_prev_next_version.sh 2 prev 1.1.1
Usage: get_prev_next_version.sh 2 next 1.1.1"


###########
## TESTS ##
###########


###########
## USAGE ##
###########

it_displays_usage () {
    ret=$(../get_prev_next_version.sh)
    test "$ret" = "$usage_message"
}

it_displays_usage_on_wrong_argument_number1 () {
    ret=$(../get_prev_next_version.sh 1)
    test "$ret" = "$usage_message"
}

it_displays_usage_on_wrong_argument_number2 () {
    ret=$(../get_prev_next_version.sh 1 prev)
    test "$ret" = "$usage_message"
}

it_displays_usage_on_wrong_argument_number3 () {
    ret=$(../get_prev_next_version.sh 1 prev 1.1 x)
    test "$ret" = "$usage_message"
}


####################
## ARGUMENTS TYPE ##
####################

it_criticize_arguments_field_size_0_prev () {
    wrong_arg="0"
    ret=$(../get_prev_next_version.sh $wrong_arg prev 1.1)
    test "$ret" = "$err_field_size_value"
}

it_criticize_arguments_field_size_0_next () {
    wrong_arg="0"
    ret=$(../get_prev_next_version.sh $wrong_arg next 1.1)
    test "$ret" = "$err_field_size_value"
}

it_criticize_arguments_command_0 () {
    wrong_arg="0"
    ret=$(../get_prev_next_version.sh 1 $wrong_arg 1.1)
    test "$ret" = "$err_command_type $wrong_arg"
}

it_criticize_arguments_field_size_type1 () {
    wrong_arg="not_a_number1"
    ret=$(../get_prev_next_version.sh $wrong_arg next 1.1)
    test "$ret" = "$err_field_size_type $wrong_arg"
}

it_criticize_arguments_field_size_type2 () {
    wrong_arg="1not_a_number"
    ret=$(../get_prev_next_version.sh $wrong_arg next 1.1)
    test "$ret" = "$err_field_size_type $wrong_arg"
}

it_criticize_arguments_field_size_type3 () {
    wrong_arg="1not_a_number1"
    ret=$(../get_prev_next_version.sh $wrong_arg next 1.1)
    test "$ret" = "$err_field_size_type $wrong_arg"
}

it_criticize_arguments_field_size_type4 () {
    wrong_arg="a"
    ret=$(../get_prev_next_version.sh $wrong_arg next 1.1)
    test "$ret" = "$err_field_size_type $wrong_arg"
}

it_criticize_arguments_field_size_type5 () {
    wrong_arg="1.1"
    ret=$(../get_prev_next_version.sh $wrong_arg next 1.1)
    test "$ret" = "$err_field_size_type $wrong_arg"
}

it_criticize_arguments_field_size_type6 () {
    wrong_arg="1a"
    ret=$(../get_prev_next_version.sh $wrong_arg next 1.1)
    test "$ret" = "$err_field_size_type $wrong_arg"
}

it_criticize_arguments_field_size_type7 () {
    wrong_arg="a1"
    ret=$(../get_prev_next_version.sh $wrong_arg next 1.1)
    test "$ret" = "$err_field_size_type $wrong_arg"
}

it_criticize_arguments_field_size_type8 () {
    wrong_arg="1a1"
    ret=$(../get_prev_next_version.sh $wrong_arg next 1.1)
    test "$ret" = "$err_field_size_type $wrong_arg"
}

it_criticize_arguments_field_size_type9 () {
    wrong_arg="a1a"
    ret=$(../get_prev_next_version.sh $wrong_arg next 1.1)
    test "$ret" = "$err_field_size_type $wrong_arg"
}

it_criticize_arguments_command_type1 () {
    wrong_arg="wrong_command_prev"
    ret=$(../get_prev_next_version.sh 1 $wrong_arg 1.1 | tail -n 1)
    test "$ret" = "$err_command_type $wrong_arg"
}

it_criticize_arguments_command_type2 () {
    wrong_arg="wrong_command_next"
    ret=$(../get_prev_next_version.sh 1 $wrong_arg 1.1 | tail -n 1)
    test "$ret" = "$err_command_type $wrong_arg"
}

it_criticize_arguments_command_type3 () {
    wrong_arg="prev_wrong_command"
    ret=$(../get_prev_next_version.sh 1 $wrong_arg 1.1 | tail -n 1)
    test "$ret" = "$err_command_type $wrong_arg"
}

it_criticize_arguments_command_type4 () {
    wrong_arg="next_wrong_command"
    ret=$(../get_prev_next_version.sh 1 $wrong_arg 1.1 | tail -n 1)
    test "$ret" = "$err_command_type $wrong_arg"
}

it_criticize_arguments_command_type5 () {
    wrong_arg="prev_wrong_command_prev"
    ret=$(../get_prev_next_version.sh 1 $wrong_arg 1.1 | tail -n 1)
    test "$ret" = "$err_command_type $wrong_arg"
}

it_criticize_arguments_command_type6 () {
    wrong_arg="next_wrong_command_next"
    ret=$(../get_prev_next_version.sh 1 $wrong_arg 1.1 | tail -n 1)
    test "$ret" = "$err_command_type $wrong_arg"
}

it_criticize_arguments_version_type1 () {
    wrong_arg="wrong_version"
    ret=$(../get_prev_next_version.sh 1 prev $wrong_arg)
    test "$ret" = "$err_version_type $wrong_arg"
}

it_criticize_arguments_version_type2 () {
    wrong_arg="wrong_version1"
    ret=$(../get_prev_next_version.sh 1 prev $wrong_arg)
    test "$ret" = "$err_version_type $wrong_arg"
}

it_criticize_arguments_version_type3 () {
    wrong_arg="1wrong_version"
    ret=$(../get_prev_next_version.sh 1 prev $wrong_arg)
    test "$ret" = "$err_version_type $wrong_arg"
}

it_criticize_arguments_version_type4 () {
    wrong_arg="1wrong_version1"
    ret=$(../get_prev_next_version.sh 1 prev $wrong_arg)
    test "$ret" = "$err_version_type $wrong_arg"
}

it_criticize_arguments_version_type5 () {
    wrong_arg="a"
    ret=$(../get_prev_next_version.sh 1 prev $wrong_arg)
    test "$ret" = "$err_version_type $wrong_arg"
}

it_criticize_arguments_version_type5 () {
    wrong_arg="b"
    ret=$(../get_prev_next_version.sh 2 prev $wrong_arg)
    test "$ret" = "$err_version_type $wrong_arg"
}


################
## Backward 1 ##
################

it_goes_backward_1_off1 () {
    ret=$(../get_prev_next_version.sh 1 prev 10)
    test "$ret" = "$err_field_size"
}

it_goes_backward_1_off2 () {
    ret=$(../get_prev_next_version.sh 1 prev 100)
    test "$ret" = "$err_field_size"
}

it_goes_backward_1_off3 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.10)
    test "$ret" = "$err_field_size"
}

it_goes_backward_1_off4 () {
    ret=$(../get_prev_next_version.sh 1 prev 0.100)
    test "$ret" = "$err_field_size"
}

it_goes_backward_1_off5 () {
    ret=$(../get_prev_next_version.sh 1 prev 10.0)
    test "$ret" = "$err_field_size"
}

it_goes_backward_1_off6 () {
    ret=$(../get_prev_next_version.sh 1 prev 100.0)
    test "$ret" = "$err_field_size"
}

it_goes_backward_1_master () {
    ret=$(../get_prev_next_version.sh 1 prev master)
    test "$ret" = "master"
}

it_goes_backward_1_overlap_many () {
    ret=$(../get_prev_next_version.sh 1 prev 1.0.0.0.0.0)
    test "$ret" = "0.9.9.9.9.9"
}


###############
## Forward 1 ##
###############

it_goes_forward_1_off1 () {
    ret=$(../get_prev_next_version.sh 1 next 10)
    test "$ret" = "$err_field_size"
}

it_goes_forward_1_off2 () {
    ret=$(../get_prev_next_version.sh 1 next 100)
    test "$ret" = "$err_field_size"
}

it_goes_forward_1_off3 () {
    ret=$(../get_prev_next_version.sh 1 next 0.10)
    test "$ret" = "$err_field_size"
}

it_goes_forward_1_off4 () {
    ret=$(../get_prev_next_version.sh 1 next 0.100)
    test "$ret" = "$err_field_size"
}

it_goes_forward_1_off5 () {
    ret=$(../get_prev_next_version.sh 1 next 10.0)
    test "$ret" = "$err_field_size"
}

it_goes_forward_1_off6 () {
    ret=$(../get_prev_next_version.sh 1 next 100.0)
    test "$ret" = "$err_field_size"
}

it_goes_forward_1_master () {
    ret=$(../get_prev_next_version.sh 1 next master)
    test "$ret" = "1"
}

it_goes_forward_1_overlap_many1 () {
    ret=$(../get_prev_next_version.sh 1 next 0.9.9.9.9.9)
    test "$ret" = "1.0.0.0.0.0"
}

it_goes_forward_1_overlap_many2 () {
    ret=$(../get_prev_next_version.sh 1 next 0.99.99.99.99.99)
    test "$ret" = "$err_field_size"
}

it_goes_forward_1_overlap_many3 () {
    ret=$(../get_prev_next_version.sh 1 next 0.999.999.999.999.999)
    test "$ret" = "$err_field_size"
}


################
## Backward 2 ##
################

it_goes_backward_2_off1 () {
    ret=$(../get_prev_next_version.sh 2 prev 100)
    test "$ret" = "$err_field_size"
}

it_goes_backward_2_off2 () {
    ret=$(../get_prev_next_version.sh 2 prev 1000)
    test "$ret" = "$err_field_size"
}

it_goes_backward_2_off3 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.100)
    test "$ret" = "$err_field_size"
}

it_goes_backward_2_off4 () {
    ret=$(../get_prev_next_version.sh 2 prev 0.1000)
    test "$ret" = "$err_field_size"
}

it_goes_backward_2_off5 () {
    ret=$(../get_prev_next_version.sh 2 prev 100.0)
    test "$ret" = "$err_field_size"
}

it_goes_backward_2_off6 () {
    ret=$(../get_prev_next_version.sh 2 prev 1000.0)
    test "$ret" = "$err_field_size"
}

it_goes_backward_2_master () {
    ret=$(../get_prev_next_version.sh 2 prev master)
    test "$ret" = "master"
}

it_goes_backward_2_overlap_many () {
    ret=$(../get_prev_next_version.sh 2 prev 1.0.0.0.0.0)
    test "$ret" = "0.99.99.99.99.99"
}


###############
## Forward 2 ##
###############

it_goes_forward_2_off1 () {
    ret=$(../get_prev_next_version.sh 2 next 100)
    test "$ret" = "$err_field_size"
}

it_goes_forward_2_off2 () {
    ret=$(../get_prev_next_version.sh 2 next 1000)
    test "$ret" = "$err_field_size"
}

it_goes_forward_2_off3 () {
    ret=$(../get_prev_next_version.sh 2 next 0.100)
    test "$ret" = "$err_field_size"
}

it_goes_forward_2_off4 () {
    ret=$(../get_prev_next_version.sh 2 next 0.1000)
    test "$ret" = "$err_field_size"
}

it_goes_forward_2_off5 () {
    ret=$(../get_prev_next_version.sh 2 next 100.0)
    test "$ret" = "$err_field_size"
}

it_goes_forward_2_off6 () {
    ret=$(../get_prev_next_version.sh 2 next 1000.0)
    test "$ret" = "$err_field_size"
}

it_goes_forward_2_master () {
    ret=$(../get_prev_next_version.sh 2 next master)
    test "$ret" = "1"
}

it_goes_forward_2_overlap_many1 () {
    ret=$(../get_prev_next_version.sh 2 next 0.9.9.9.9.9)
    test "$ret" = "0.9.9.9.9.10"
}

it_goes_forward_2_overlap_many2 () {
    ret=$(../get_prev_next_version.sh 2 next 0.99.99.99.99.99)
    test "$ret" = "1.0.0.0.0.0"
}

it_goes_forward_2_overlap_many3 () {
    ret=$(../get_prev_next_version.sh 2 next 0.999.999.999.999.999)
    test "$ret" = "$err_field_size"
}


################
## Backward 3 ##
################

it_goes_backward_3_off1 () {
    ret=$(../get_prev_next_version.sh 3 prev 1000)
    test "$ret" = "$err_field_size"
}

it_goes_backward_3_off2 () {
    ret=$(../get_prev_next_version.sh 3 prev 10000)
    test "$ret" = "$err_field_size"
}

it_goes_backward_3_off3 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.1000)
    test "$ret" = "$err_field_size"
}

it_goes_backward_3_off4 () {
    ret=$(../get_prev_next_version.sh 3 prev 0.10000)
    test "$ret" = "$err_field_size"
}

it_goes_backward_3_off5 () {
    ret=$(../get_prev_next_version.sh 3 prev 1000.0)
    test "$ret" = "$err_field_size"
}

it_goes_backward_3_off6 () {
    ret=$(../get_prev_next_version.sh 3 prev 10000.0)
    test "$ret" = "$err_field_size"
}

it_goes_backward_3_master () {
    ret=$(../get_prev_next_version.sh 3 prev master)
    test "$ret" = "master"
}

it_goes_backward_3_overlap_many () {
    ret=$(../get_prev_next_version.sh 3 prev 1.0.0.0.0.0)
    test "$ret" = "0.999.999.999.999.999"
}


###############
## Forward 3 ##
###############

it_goes_forward_3_off1 () {
    ret=$(../get_prev_next_version.sh 3 next 1000)
    test "$ret" = "$err_field_size"
}

it_goes_forward_3_off2 () {
    ret=$(../get_prev_next_version.sh 3 next 10000)
    test "$ret" = "$err_field_size"
}

it_goes_forward_3_off3 () {
    ret=$(../get_prev_next_version.sh 3 next 0.1000)
    test "$ret" = "$err_field_size"
}

it_goes_forward_3_off4 () {
    ret=$(../get_prev_next_version.sh 3 next 0.10000)
    test "$ret" = "$err_field_size"
}

it_goes_forward_3_off5 () {
    ret=$(../get_prev_next_version.sh 3 next 1000.0)
    test "$ret" = "$err_field_size"
}

it_goes_forward_3_off6 () {
    ret=$(../get_prev_next_version.sh 3 next 10000.0)
    test "$ret" = "$err_field_size"
}

it_goes_forward_3_master () {
    ret=$(../get_prev_next_version.sh 3 next master)
    test "$ret" = "1"
}

it_goes_forward_3_overlap_many1 () {
    ret=$(../get_prev_next_version.sh 3 next 0.9.9.9.9.9)
    test "$ret" = "0.9.9.9.9.10"
}

it_goes_forward_3_overlap_many2 () {
    ret=$(../get_prev_next_version.sh 3 next 0.99.99.99.99.99)
    test "$ret" = "0.99.99.99.99.100"
}

it_goes_forward_3_overlap_many3 () {
    ret=$(../get_prev_next_version.sh 3 next 0.999.999.999.999.999)
    test "$ret" = "1.0.0.0.0.0"
}

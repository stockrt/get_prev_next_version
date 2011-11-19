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
# get_prev_next_version.sh
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


##########
## FUNC ##
##########

get_prev_next_version ()
{
    # Save original IFS
    ofs="$IFS"

    # Parameters
    field_size="$1"
    command="$2"
    version="$3"

    # Check parameters
    if [[ -z "$field_size" || -z "$command" || -z "$version" || ! -z "$4" ]]
    then
        echo "ERR: $BASH_SOURCE:$BASH_LINENO $FUNCNAME():$LINENO \"$*\""
        echo "ERR: You must call \"$FUNCNAME\" with three non-empty parameters."
        return
    fi

    # Check field size type
    if [[ ! "$field_size" =~ ^[[:digit:]]+$ ]]
    then
        echo "$err_field_size_type $field_size"
        return
    fi

    # Check command type
    case "$command" in
        next)
            next_field_op=1
            ;;
        prev)
            next_field_op=-1
            ;;
        *)
            echo "ERR: $BASH_SOURCE:$BASH_LINENO $FUNCNAME():$LINENO \"$*\""
            echo "ERR: You must call \"$FUNCNAME\" with \"prev\" or \"next\" operator commands."
            echo "$err_command_type $command"
            return
            ;;
    esac

    # Creating array with original fields
    field_count=0
    fields_orig=()
    IFS="."
    for field in $version
    do
        # Array with original splitted fields
        fields_orig[$field_count]=$field
        let field_count+=1
    done
    # Restore original IFS
    IFS="$ofs"
    let field_count-=1

    # Check version type
    for count in $(seq 0 $field_count)
    do
        field=${fields_orig[$count]}

        if [[ ! "$field" =~ ^[[:digit:]]+$ ]]
        then
            echo "$err_version_type $version"
            return
        fi
    done

    # Version number field size case
    for count in $(seq 0 $field_count)
    do
        field=${fields_orig[$count]}

        if [[ ${#field} -gt $field_size ]]
        then
            echo "$err_field_size"
            return
        fi
    done

    # Initial master cases
    if [[ "$version" == "master" ]]
    then
        if [[ "$command" == "prev" ]]
        then
            echo "master"
            return
        elif [[ "$command" == "next" ]]
        then
            echo "0.1"
            return
        fi
    fi

    # Boundary cases
    will_do_other_cases=0
    for count in $(seq 0 $field_count)
    do
        field=${fields_orig[$count]}

        # Does version contain fields other than 0 or 99?
        if [[ $field -ne 0 && $field -ne 99 ]]
        then
            # Will process other cases than boundary cases
            will_do_other_cases=1
        fi
    done

    skip_boundary_case=0
    if [[ $will_do_other_cases -eq 0 && "$command" == "prev" ]]
    then
        for count in $(seq 0 $field_count)
        do
            field=${fields_orig[$count]}

            if [[ $field -eq 99 ]]
            then
                skip_boundary_case=1
            fi
        done

        # All fields are 0 and command is prev
        if [[ $skip_boundary_case -eq 0 ]]
        then
            echo "master"
            return
        fi
    elif [[ $will_do_other_cases -eq 0 && "$command" == "next" ]]
    then
        np_version=""
        for count in $(seq 0 $field_count)
        do
            field=${fields_orig[$count]}

            if [[ $field -eq 0 ]]
            then
                skip_boundary_case=1
            fi
            np_version="$np_version.0"
        done

        # All fields are 99 and command is next
        if [[ $skip_boundary_case -eq 0 ]]
        then
            echo "1$np_version"
            return
        fi
    fi

    next_field_change=1
    fields_new=()
    for reverse_count in $(seq $field_count -1 0)
    do
        field=${fields_orig[$reverse_count]}

        if [[ $next_field_change -eq 1 ]]
        then
            let field+=next_field_op
        fi

        if [[ $field -gt 99 ]]
        then
            field=0
            next_field_change=1
        elif [[ $field -lt 0 ]]
        then
            field=99
            next_field_change=1
        else
            next_field_change=0
        fi

        fields_new[$reverse_count]=$field
    done

# Brain fucker. Left here for mind exercise only :)
#    np_version=""
#    for reverse_count in $(seq $field_count -1 0)
#    do
#        field=${fields_new[$reverse_count]}
#
#        # Brain twister level 1
#        if [[ $reverse_count -eq 0 ]]
#        then
#            np_version="$field$np_version"
#        else
#            np_version=".$field$np_version"
#        fi
#
#        # Brain twister level 2
#        if [[ $reverse_count -ne 0 ]]
#        then
#            np_version=".$field$np_version"
#        else
#            np_version="$field$np_version"
#        fi
#    done

    all_zeros_version=1
    np_version=""
    for count in $(seq 0 $field_count)
    do
        field=${fields_new[$count]}

        if [[ $count -eq 0 ]]
        then
            np_version="$field"
        else
            np_version="$np_version.$field"
        fi

        if [[ $field -ne 0 ]]
        then
            all_zeros_version=0
        fi
    done

    # Final master case
    if [[ $all_zeros_version -eq 1 ]]
    then
        # All zeros final version is considered master
        echo "master"
    else
        echo "$np_version"
    fi
}


##########
## MAIN ##
##########

# Arguments
field_size="$1"
command="$2"
version="$3"

# Check arguments
if [[ -z "$field_size" || -z "$command" || -z "$version" || ! -z "$4" ]]
then
    echo "$usage_message"
else
    get_prev_next_version "$field_size" "$command" "$version"
fi

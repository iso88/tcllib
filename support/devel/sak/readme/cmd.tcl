# -*- tcl -*-
# Implementation of 'readme'.

# Available variables
# * argv  - Cmdline arguments
# * base  - Location of sak.tcl = Top directory of Tcllib distribution
# * cbase - Location of all files relevant to this command.
# * sbase - Location of all files supporting the SAK.

package require sak::util
package require sak::readme

set raw  0
set log  0
set stem {}
set tclv {}

if {[llength $argv] > 1} {
    sak::readme::usage
} elseif {[llength $argv]} {
    sak::readme::review [lindex $argv 0]
}

sak::readme::run

##
# ###

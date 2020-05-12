*
* Derived from https://github.com/gslab-econ/template/blob/master/config/config_stata.do
*
clear all
include "config.do"
program main
	* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	* Add required packages from SSC to this list
	* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	local ssc_packages ///
	    estwrite estout  ///
		 texsave
		
    if !missing("`ssc_packages'") {
        foreach pkg in `ssc_packages' {
	* test if present to avoid gratuitous re-installs
		capture which `pkg'
		if _rc == 111 {			
			dis "Installing `pkg'"
                	quietly ssc install `pkg', replace
			}
        }
    }

    * Install packages using net, again testing if they are present
    capture which yaml
	if _rc == 111 {
        quietly net from "https://raw.githubusercontent.com/gslab-econ/stata-misc/master/"
        quietly cap ado uninstall yaml
        quietly net install yaml
	}
	
        * Install complicated packages : moremata (the test with which does not work)
    capture confirm file $adobase/plus/m/moremata.hlp
        if _rc != 0 {
        cap ado uninstall moremata
        ssc install moremata
        }
        

end

main

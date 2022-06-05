configuration apache2 {
	Import-DSCResource -module "nx"

	Node localhost {
	  #Ensure packages are installed
	  nxPackage 'apache2' {
	      Ensure = "Present"
	      Name = 'apache2'
	      PackageManager = "Apt"
	  }
	
	  #Ensure daemons are enabled
	  nxService 'apache2' {
	      Enabled = $true
	      Name = 'apache2'
	      Controller = "init"
	      State = "running"
	  }
	}
}
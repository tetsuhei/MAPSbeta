FabProcess.delete_all

FabProcess.create(
	:name => 'Deposition',
	:category => 'Additive',
	:description =>
		%{<p>
			This is the description of the Deposition process, with a brief explanation 
			of the parameters and outcome of this fabrication step
		</p>}
	)

FabProcess.create(
	:name => 'Doping',
	:category => 'Additive',
	:description =>
		%{<p>
			This is the description of the Doping process, with a brief explanation 
			of the parameters and outcome of this fabrication step
		</p>}
	)

FabProcess.create(
	:name => 'Bonding',
	:category => 'Additive',
	:description =>
		%{<p>
			This is the description of the Bonding process, with a brief explanation 
			of the parameters and outcome of this fabrication step
		</p>}
	)

FabProcess.create(
	:name => 'Etching',
	:category => 'Removal',
	:description =>
		%{<p>
			This is the description of the Etching process, with a brief explanation 
			of the parameters and outcome of this fabrication step
		</p>}
	)

FabProcess.create(
	:name => 'Cleaning',
	:category => 'Removal',
	:description =>
		%{<p>
			This is the description of the Cleaning process, with a brief explanation 
			of the parameters and outcome of this fabrication step
		</p>}
	)

FabProcess.create(
	:name => 'Thermal',
	:category => 'Transformation',
	:description =>
		%{<p>
		  This is the description of the Thermal process, with a brief explanation 
		  of the parameters and outcome of this fabrication step
		</p>}
	)

FabProcess.create(
	:name => 'Radiation',
	:category => 'Transformation',
	:description =>
		%{<p>
			This is the description of the Radiation process, with a brief explanation 
			of the parameters and outcome of this fabrication step
		</p>}
	)
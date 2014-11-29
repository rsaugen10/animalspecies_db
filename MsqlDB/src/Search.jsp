<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
<style>
	body {background-color:#FAF3AA;
			text-align:center;}
	ul {list-style-type:none;}
</style>

</head>
<body>
<h1>Search</h1>
<p>Search by any number of attributes:</p>


<form>
<b><label for="commonName">Common Name:</label></b><input type="text" id="commonName" name="commonName">
<br />
<b>Diet:</b> 
<input type="checkbox" name="diet" id="carnivore" value="carnivore">
	<label for="carnivore">Carnivore</label>
<input type="checkbox" name="diet" id="herbivore" value="herbivore">
	<label for="herbivore">Herbivore</label> 
<input type="checkbox" name="diet" id="insectivore" value="insectivore">
	<label for="insectivore">Insectivore</label> 
<input type="checkbox" name="diet" id="omnivore" value="omnivore">
	<label for="omnivore">Omnivore</label> 
<input type="checkbox" name="diet" id="piscivore" value="piscivore">
	<label for="piscivore">Piscivore</label>
<input type="checkbox" name="diet" id="scavenger" value="scavenger">
	<label for="scavenger">Scavenger</label>
<br />
<b>Location:</b> 
<input type="checkbox" name="location" id="nAmerica" value="nAmerica">
	<label for="nAmerica">N.America</label> 
<input type="checkbox" name="location" id="sAmerica" value="sAmerica">
	<label for="sAmerica">S.America</label> 
<input type="checkbox" name="location" id="asia" value="asia">
	<label for="asia">Asia</label> 
<input type="checkbox" name="location" id="africa" value="africa">
	<label for="africa">Africa</label> 
<input type="checkbox" name="location" id="australia" value="australia">
	<label for="australia">Australia</label> 
<input type="checkbox" name="location" id="europe" value="europe">
	<label for="europe">Europe</label> 
<input type="checkbox" name="location" id="antarctica" value="antarctica">
	<label for="antarctica">Antarctica</label> 
<input type="checkbox" name="location" id="oceans" value="oceans">
	<label for="oceans">Oceans</label>
<br />
<b>Habitat:</b>
<input type="checkbox" name="habitat" id="mountain" value="mountain">
	<label for="mountain">Mountain</label> 
<input type="checkbox" name="habitat" id="scrub" 	value="scrub">
	<label for="scrub">Scrub</label> 
<input type="checkbox" name="habitat" id="forest" 	value="forest">
	<label for="forest">Forest</label> 
<input type="checkbox" name="habitat" id="urban" 	value="urban">
	<label for="urban">Urban</label> 
<input type="checkbox" name="habitat" id="rainforest" value="rainforest">
	<label for="rainforest">Rain forest</label> 
<input type="checkbox" name="habitat" id="rocky" 	value="rocky">
	<label for="rocky">Rocky</label> 
<input type="checkbox" name="habitat" id="arid" 	value="arid">
	<label for="arid">Arid</label> 
<input type="checkbox" name="habitat" id="caves"	value="caves">
	<label for="caves">Caves</label> 
<br/>
<input type="checkbox" name="habitat" id="desert"	value="desert">
	<label for="desert">Desert</label> 
<input type="checkbox" name="habitat" id="brush"	value="brush">
	<label for="brush">Brush</label> 
<input type="checkbox" name="habitat" id="tundra"	value="tundra">
	<label for="tundra">Tundra</label> 
<input type="checkbox" name="habitat" id="coastal"	value="coastal">
	<label for="coastal">Coastal</label> 
<input type="checkbox" name="habitat" id="farmland"	value="farmland">
	<label for="farmland">Farmland</label> 
<input type="checkbox" name="habitat" id="prairie"	value="prairie">
	<label for="prairie">Prairie</label> 
<input type="checkbox" name="habitat" id="grassland" value="grassland">
	<label for="grassland">Grassland</label> 
<input type="checkbox" name="habitat" id="semidesert" value="semidesert">
	<label for="semidesert">Semidesert</label> 
<br/>
<input type="checkbox" name="habitat" id="savannah"	value="savannah">
	<label for="savannah">Savannah</label> 
<input type="checkbox" name="habitat" id="swamp"	value="swamp">
	<label for="swamp">Swamp</label> 
<input type="checkbox" name="habitat" id="river"	value="river">
	<label for="river">River</label> 
<input type="checkbox" name="habitat" id="salt-water" value="salt-water">
	<label for="salt-water">Salt-Water</label> 
<input type="checkbox" name="habitat" id="freshwater" value="freshwater">
	<label for="freshwater">Freshwater</label> 
<input type="checkbox" name="habitat" id="pond"		value="pond">
	<label for="pond">Pond</label> 
<input type="checkbox" name="habitat" id="tidal-pools" value="tidal-pools">
	<label for="tidal-pools">Tidal-pools</label>
<br />
<b>Time Active:</b>
<input type="checkbox" name="time" id="day" value="Diurnal">
	<label for="day">Day</label> 
<input type="checkbox" name ="time" id="night" value="Nocturnal">
	<label for="night">Night</label> 
<input type="checkbox" name="time" id="dawndusk" value="Crepuscular">
	<label for="dawndusk">Dawn/Dusk</label> 
<br />
<b>Conservation Status: </b>
<select name="status">
	<option value="EX">EX</option><option value="EW">EW</option><option value="CR">CR</option><option value="EN">EN</option>
	<option value="VU">VU</option><option value="NT">NT</option><option value="LC">LC</option> 
	<option value="DD">DD</option><option value="NE">NE</option><option value="Domesticated">Domesticated</option>
	<option value="NA">N/A</option>
</select>
</form>




</body>
</html>
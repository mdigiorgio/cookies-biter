DELETE FROM moz_cookies
WHERE baseDomain LIKE 'alitalia%' OR
	  baseDomain LIKE 'easyjet%' OR
	  baseDomain LIKE 'ryanair%' OR
	  baseDomain LIKE 'norwegian%' OR
	  baseDomain LIKE 'volagratis%' OR
	  baseDomain LIKE 'edreams%' OR
	  baseDomain LIKE 'blue%air%' OR
	  baseDomain LIKE 'lufthansa%' OR
	  baseDomain LIKE 'airfrance%' OR
	  baseDomain LIKE 'airberlin%'
	;

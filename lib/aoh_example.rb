# Examples inspired by David Foster Wallace's # (2/21/1962 to 9/12/2008) _Infinite Jest_

DON_G = { name:  "Don Gately", occupation: "Live-in Staff" }
JOELLE_VD = { name:  "Joelle van Dyne", occupation: "Radio Personality" }
PAT_M =  { name:  "Pat Monteseian", occupation: "Staff" }
KATE_G = { name:  "Kate Gompert", occupation: "None" }
BRUCE_G = { name:  "Bruce Green", occupation: "Fan of Mildred" }

def assembled_aoh
  result = [DON_G, JOELLE_VD, PAT_M, KATE_G, BRUCE_G]
  return result
end

def literal_aoh
  # Using Array literal syntax only, build a nested array that uses the data in
  # held in the constants
  result = []
  result.push({:name => DON_G[:name], :occupation => DON_G[:occupation]})
  result.push({:name => JOELLE_VD[:name], :occupation => JOELLE_VD[:occupation]})
  result.push({:name => PAT_M[:name], :occupation => PAT_M[:occupation]})
  result.push({:name => KATE_G[:name], :occupation => KATE_G[:occupation]})
  result.push({:name => BRUCE_G[:name], :occupation => BRUCE_G[:occupation]})
  return result
end

def aoh_lookup(aoh, row, key)
  return aoh[row][key]
  
end

def aoh_update(aoh, row, key, new_value)
  # Update the AoH data at row and key to have the value of new_value
  # Return the updated AoH
  aoh[row][key] = new_value
  return aoh
end

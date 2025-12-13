SELECT TOP 1 cbp.body_part, SUM(multiplier * base_damage) 'total_damage'
FROM creature_body_parts cbp
  JOIN body_part_affinities bpa on 
    cbp.body_part = bpa.body_part 
    AND cbp.creature = bpa.creature 
  JOIN weapon_properties wp ON bpa.property = wp.property 
  JOIN property_effects pe ON wp.property = pe.property
WHERE cbp.creature  = 'Sleigh Bell Wisp'
  AND wp.weapon = 'Hearthfire Torch'
GROUP BY cbp.body_part 
ORDER BY 2 DESC

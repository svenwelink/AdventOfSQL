SELECT supplier, MIN (ProduceCount) 'MinProduceCount'
  FROM (
  SELECT supplier, si.material, si.qty / sgm.qty 'ProduceCount'
  FROM supplier_inventory si
  JOIN snow_globe_materials sgm ON si.material = sgm.material 
  GROUP BY supplier, si.material)
GROUP BY supplier 
ORDER BY 2 DESC, MinProduceCount ASC

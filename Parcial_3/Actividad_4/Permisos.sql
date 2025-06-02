-- Dar Permisos a 'Agentes Externos' 
Grant SELECT ON Base_Insana.Iguana TO 'AgentesExternos'@'localhost';

-- Quitar Permisos a 'Agentes Externos' 
REVOKE SELECT ON Base_Insana.Iguana FROM 'AgentesExternos'@'localhost';


-- Dar Permisos a 'PO' 
Grant SELECT ON Base_Insana.Iguana TO 'PO'@'localhost';

-- Quitar Permisos a 'PO' 
REVOKE SELECT ON Base_Insana.Iguana FROM 'PO'@'localhost';


-- Dar Permisos a 'PM' 
Grant UPDATE, DELETE, CREATE ON Base_Insana.Iguana TO 'PM'@'localhost';

-- Quitar Permisos a 'PM' 
REVOKE UPDATE, DELETE, CREATE ON Base_Insana.Iguana FROM 'PM'@'localhost';


-- Dar Permisos a 'Architect' 
Grant UPDATE, DROP, CREATE ON Base_Insana.Iguana TO 'Architect'@'localhost';

-- Quitar Permisos a 'Architect' 
REVOKE UPDATE, DROP, CREATE ON Base_Insana.Iguana FROM 'Architect'@'localhost';


-- Dar Permisos a 'BA' 
Grant SELECT ON Base_Insana.Iguana TO 'BA'@'localhost';

-- Quitar Permisos a 'BA' 
REVOKE SELECT ON Base_Insana.Iguana FROM 'BA'@'localhost';


-- Dar Permisos a 'Developer' 
Grant SELECT ON Base_Insana.Iguana TO 'Developer'@'localhost';

-- Quitar Permisos a 'Developer' 
REVOKE SELECT ON Base_Insana.Iguana FROM 'Developer'@'localhost';
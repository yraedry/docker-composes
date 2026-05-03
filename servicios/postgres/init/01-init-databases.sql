-- Idempotent: safe on every container start; only runs on first init (empty data dir)
SELECT 'CREATE DATABASE firefly_db'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'firefly_db')\gexec

SELECT 'CREATE DATABASE n8n_db'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'n8n_db')\gexec

GRANT ALL PRIVILEGES ON DATABASE firefly_db TO postgres;
GRANT ALL PRIVILEGES ON DATABASE n8n_db TO postgres;

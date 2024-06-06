CREATE ROLE db_admin;
CREATE ROLE table_manager;
CREATE ROLE column_editor;

GRANT ALL PRIVILEGES ON DATABASE football_league TO db_admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON Teams TO table_manager;
GRANT SELECT, UPDATE (name) ON Players TO column_editor;

CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'manager_user'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'editor_user'@'localhost' IDENTIFIED BY 'password';

GRANT db_admin TO 'admin_user'@'localhost';
GRANT table_manager TO 'manager_user'@'localhost';
GRANT column_editor TO 'editor_user'@'localhost';

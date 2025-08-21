# Hospital Management System

A comprehensive Hospital Management System built with CodeIgniter PHP framework.

## Prerequisites

- PHP 5.6 or higher
- MySQL 5.6 or higher
- Apache/Nginx web server
- XAMPP/WAMP/MAMP (for local development)
- Composer (for dependency management)

## Installation Guide

### 1. Server Setup

1. Install XAMPP/WAMP/MAMP if you haven't already
2. Start Apache and MySQL services

### 2. Database Setup

1. Create a new MySQL database for the application
2. Import the database schema from `database/hms_db.sql` using phpMyAdmin or MySQL command line

### 3. Application Configuration

1. Copy `application/config/database.php.example` to `application/config/database.php`
2. Update the database configuration in `application/config/database.php` with your database credentials:
   ```php
   $db['default'] = array(
       'hostname' => 'localhost',
       'username' => 'your_username',
       'password' => 'your_password',
       'database' => 'your_database_name',
       // ... other settings
   );
   ```

3. Set the base URL in `application/config/config.php`:
   ```php
   $config['base_url'] = 'http://localhost/HMSCI/';
   ```

### 4. File Permissions

Make sure the following directories are writable:
- application/cache/
- application/logs/
- uploads/ (if it exists)

## Running the Application

1. Start your local server (XAMPP/WAMP/MAMP)
2. Open a web browser and navigate to: `http://localhost/HMSCI`

## Default Login Credentials

- **Admin Panel**:
  - URL: `http://localhost/HMSCI/login`
  - Username: admin@admin.com
  - Password: admin123

## Features

- Multi-user role management (Admin, Doctor, Nurse, Patient, etc.)
- Patient registration and management
- Appointment scheduling
- Billing and invoicing
- Prescription management
- Inventory management
- Reports generation

## Troubleshooting

1. **404 Errors**:
   - Make sure mod_rewrite is enabled in Apache
   - Check your .htaccess file in the root directory

2. **Database Connection Issues**:
   - Verify database credentials in `application/config/database.php`
   - Ensure MySQL service is running

3. **Permission Issues**:
   - Make sure the web server has write permissions to required directories

## Support

For support, please contact: tingzlarry@gmail.com

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Developed by William Tuta and Lawrence Mbugua Njuguna

# Security Guidelines for Hospital Management System

## 🔒 Critical Security Requirements

### 1. **Change Default Credentials Immediately**
- Default admin credentials have been removed from public files
- **MUST** set strong admin password during installation
- Use email format: `admin@yourhospital.com` (not the default)

### 2. **Database Security**
- Database config file (`application/config/database.php`) is gitignored
- Never commit database credentials to version control
- Use environment variables for sensitive configuration

### 3. **Password Security**
- All passwords stored in database should be hashed (bcrypt/password_hash)
- Implement password complexity requirements
- Force password changes on first login

### 4. **Input Validation**
- All user inputs use CodeIgniter's XSS filtering
- Form validation implemented on all forms
- SQL injection protection via CodeIgniter's Active Record

### 5. **File Upload Security**
- File uploads restricted to specific types (gif, jpg, png)
- File size limits enforced (2MB max)
- Upload directory outside web root recommended

### 6. **Session Security**
- Sessions properly configured with secure flags
- Session timeout implemented
- CSRF protection enabled

## ⚠️ Security Checklist Before Deployment

- [ ] Change default admin credentials
- [ ] Configure database with strong credentials
- [ ] Enable HTTPS in production
- [ ] Set proper file permissions (755 for directories, 644 for files)
- [ ] Configure error reporting (disable in production)
- [ ] Enable CodeIgniter's CSRF protection
- [ ] Set secure session configuration
- [ ] Regular security updates

## 🚨 Never Commit These Files
- `application/config/database.php`
- Any files containing passwords or API keys
- Environment configuration files
- Backup files with sensitive data

## 📞 Security Contact
Report security issues to: security@yourhospital.com

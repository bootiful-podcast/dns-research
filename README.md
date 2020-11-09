# DNS Research

If you want to add additional domains, then be sure to login to Gandi.net and add an A record that points to your static, reserved IP

---
NAME  TYPE  TTL  VALUE
@     A     300   ${RESERVED_ID}
api     A     300   ${RESERVED_ID}
studio     A     300   ${RESERVED_ID}
configuration     A     300   ${RESERVED_ID}
---

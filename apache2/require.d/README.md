Place your default require all rules here

../conf/required.conf loads *.conf inside a RequireAll tag


# Pre-defined templates

## Include conf/extra/auth-require-rfc1918.conf

* 10.0.0.0/8
* 172.16.0.0/12
* 192.168.0.0/16

## Include conf/extra/auth-require-private.conf

* localhost
* valid-user
* internal ips (rfc1918)

# Examples

<RequireAny>
  Require valid-user

  Include conf/extra/auth-require-rfc1918.conf
</RequireAny>

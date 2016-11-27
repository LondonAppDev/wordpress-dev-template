mariadb:
    lookup:
        root_password: "password"

wordpress_sites:
    wordpress_source: "https://wordpress.org/wordpress-4.6.1.tar.gz"
    wordpress_source_hash: "md5=ca0b978fd702eac033830ca2d0784b79"
    sites_base_dir: "/usr/local/webapps"
    db_connection_user: "root"
    db_connection_user_pass: "password"
    sites:
        londonappdev:
            site_domain: "local.wordpress.dev"
            db_host: "localhost"
            db_name: "wordpress_db"
            db_user: "wordpress"
            db_pass: "password"
            user: "www-data"
            group: "www-data"
            wp_auth_keys_and_salts: |
                define('AUTH_KEY',         '[^:i)|w;Vn%NvJ: MIEgQ1gC:+|?ePA&?}9ZYc!)|8s{J_Oa^uR;WRpdSgA%lAq4');
                define('SECURE_AUTH_KEY',  'D&k5`k#zkoT1qc}`@!03$(H4`|YMFOorg%hli-)d4p7w1#C{&g7FE|>^M3p4PrVI');
                define('LOGGED_IN_KEY',    'GG% AI@bjNN=_phooSx6wl$HkU y*};Cn6$A?#~TG.r$-]`#at00._W<VnVs,GuY');
                define('NONCE_KEY',        'cv^h)0~BvutCB}^u@Hk^/)iIQ0r&t;j+2B$qLi3VKodNb!ZOt4 -{c bkdW(b>sV');
                define('AUTH_SALT',        '0|8^AK5d<,e}]Z`V>IqhE|h~R|%4?+hIzH_+vlL^n(T8Gk%V`9SVQQ$G|lyulUL{');
                define('SECURE_AUTH_SALT', 'v|{`$Cy!7i8646tv]9^&H%/H.UHT=V[an;ZV6XrLni.g4M#dan+|jvv;l)?4+k=]');
                define('LOGGED_IN_SALT',   ':k9:)u>O[BHK9n-E Vu4+IG<?t+z1-4!o86M|/}{)@guKLkBfstoWM|G^j=R84HK');
                define('NONCE_SALT',       ')]|.F0:zsS-JOOpgxe1FRBxI{ih{t^$@z}e8,2/IC?/~|Wj$,4.77@FA7w2al~Ze');

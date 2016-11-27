install_base_tools:
    pkg.installed:
        - pkgs:
            - vim
            - screen
            - wget
            - subversion
            - curl

gulp:
    npm.installed:
        - user: root

/usr/local/webapps/wordpress_dev/wordpress/wp-content/themes/dev_theme:
    file.symlink:
        - target: /vagrant/dist
        - user: www-data
        - group: www-data

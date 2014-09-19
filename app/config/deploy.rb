set   :application,   "Symfony Modifiée"
set   :deploy_to,     "/var/www/Symfony"
set   :domain,        "cloud-francoisp"
set   :webserver_user,"www-data"

set   :scm,           :git
set   :repository,    "https://github.com/FrancoisPl/symfony-standard.git"

role  :web,           domain
role  :app,           domain, :primary => true

set   :use_sudo,      false
set   :keep_releases, 3
set   :shared_files,  ["app/config/parameters.yml"]
set   :shared_children,[app_path + "/logs", web_path + "/uploads", "vendor"]
set   :use_composer,  true
set   :update_vendors,false

set :composer_install_flags, '--no-interaction --quiet --optimize-autoloader'

logger.level = Logger::MAX_LEVEL

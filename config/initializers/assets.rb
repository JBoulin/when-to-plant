# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w(bootstrap.min.js popper.js)
Rails.application.config.assets.precompile += %w( controllers/hello_controller.js )
Rails.application.config.assets.precompile += %w( favicon/site.webmanifest )
Rails.application.config.assets.precompile += %w( controllers/index.js )
Rails.application.config.assets.precompile += %w( controllers/search_controller.js )
Rails.application.config.assets.precompile += %w( sweetalert2.js )
Rails.application.config.assets.precompile += %w( controllers/alert_controller.js )
Rails.application.config.assets.precompile += %w( controllers/tabs_controller.js )
Rails.application.config.assets.precompile += %w( controllers/modals_controller.js )
Rails.application.config.assets.precompile += %w( @hotwired--stimulus.js )
Rails.application.config.assets.precompile += %w( @stimulus-components--reveal.js )
Rails.application.config.assets.precompile += %w( comments.js )
Rails.application.config.assets.precompile += %w( controllers/edit_tip_controller.js )
Rails.application.config.assets.precompile += %w( controllers/filter_controller.js )
Rails.application.config.assets.precompile += %w( controllers/edit_list_controller.js )
Rails.application.config.assets.precompile += %w( controllers/delete_alert_controller.js )

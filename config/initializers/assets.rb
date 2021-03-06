# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'


# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.

## ALTERNATIVE TO PUTTING CSS ALL IN THE MANIFEST (WHICH IS THE PREFERRED METHOD)
  ## THEN FOLLOW UP WITH INCLUDING stylesheet_link_tag IN THE APPLICATION.HTML.ERB
# Rails.application.config.assets.precompile += %w( normalize.css webflow.css qpi.css )
Rails.application.config.assets.precompile += %w(webflow.js leaveCommunityModal.js)

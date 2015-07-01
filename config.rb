require 'digest/md5'
require 'slim'

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (https://middlemanapp.com/advanced/dynamic_pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

helpers do
  def gravatar_url(email)
    hash = Digest::MD5.hexdigest(email)
    "https://www.gravatar.com/avatar/#{hash}.jpg"
  end
end

###
# Configuration
###

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :relative_links, true

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# Build
configure :build do
  activate :minify_css
  activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  activate :relative_assets
end

# Deploys
activate :deploy do |deploy|
  deploy.method = :git
  deploy.build_before = true
end

# Pretty URLs
activate :directory_indexes

# Automatically generate vendor prefixes for CSS
activate :autoprefixer

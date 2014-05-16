# Copyright (c) 2013, 2014 ICRL
# See the file license.txt for copying permission.

###
# Blog settings
###

Time.zone = "Pacific Time (US & Canada)"


activate :blog do |blog|
  blog.prefix = "blog"
  blog.taglink = "/tags/:tag.html"
  blog.layout = "post"
  blog.default_extension = ".markdown.erb"
  blog.tag_template = "blog/tag.html"
  blog.paginate = true
  blog.summary_separator = /(READMORE)/
  # blog.summary_length = 500
  # blog.calendar_template = "calendar.html"
  blog.permalink = ":year/:month/:day/:title.html"
  # blog.sources = ":year-:month-:day-:title.html"
  # blog.year_link = ":year.html"
  # blog.month_link = ":year/:month.html"
  # blog.day_link = ":year/:month/:day.html"
  # blog.per_page = 10
  # blog.page_link = "page/:num"
end

activate :syntax

activate :directory_indexes

page "blog/feed.xml", :layout => false

set :markdown_engine, :redcarpet
set :markdown, :layout_engine => :erb,
               :fenced_code_blocks => true,
               :tables => true,
               :autolink => true,
               :smartypants => true,
               :with_toc_data => true

###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

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

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

# Reload the browser automatically whenever files change
activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

page "/google423459de028db7c6.html", :directory_index=>false

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

set :relative_links, true

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
   activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/pcsredesign"
end

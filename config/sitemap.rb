# Set the host name for URL creation
require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = "http://ssbathstudio.com"

SitemapGenerator::Sitemap.create do
  add root_path, :changefreq => 'daily', :priority => 1
  add '/about-us', :changefreq => 'daily', :priority => 0.8
  add '/bathroom-accessories', :changefreq => 'daily', :priority => 0.9
  add '/bathroom-fittings', :changefreq => 'daily', :priority => 0.9
  add '/bathtubs', :changefreq => 'daily', :priority => 0.9
  add '/brass-valves-and-fittings', :changefreq => 'daily', :priority => 0.9
  add '/ci-manhole-covers', :changefreq => 'daily', :priority => 0.9
  add '/ci-pipes-and-fittings', :changefreq => 'daily', :priority => 0.9
  add '/cpvc-pipes-and-fittings', :changefreq => 'daily', :priority => 0.9
  add '/gi-pipes-and-fittings', :changefreq => 'daily', :priority => 0.9
  add '/hand-dryer', :changefreq => 'daily', :priority => 0.9
  add '/hdpe-pipes-and-fittings', :changefreq => 'daily', :priority => 0.9
  add '/kitchen-sinks', :changefreq => 'daily', :priority => 0.9
  add '/mirrors-and-cabinets', :changefreq => 'daily', :priority => 0.9
  add '/ppr-pipes-and-fittings', :changefreq => 'daily', :priority => 0.9
  add '/ptmt-fittings', :changefreq => 'daily', :priority => 0.9
  add '/pvc-pipes-and-fittings', :changefreq => 'daily', :priority => 0.9
  add '/sanitaryware', :changefreq => 'daily', :priority => 0.9
  add '/shower-enclosures', :changefreq => 'daily', :priority => 0.9
  add '/shower-panels', :changefreq => 'daily', :priority => 0.9
  add '/swr-pipes-and-fittings', :changefreq => 'daily', :priority => 0.9
  add '/tiles', :changefreq => 'daily', :priority => 0.9
  add '/upvc-pipes-and-fittings', :changefreq => 'daily', :priority => 0.9
  add '/water-heater', :changefreq => 'daily', :priority => 0.9
  add '/water-tank', :changefreq => 'daily', :priority => 0.9
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end

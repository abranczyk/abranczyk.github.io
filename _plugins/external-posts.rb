require 'feedjira'
require 'httparty'
require 'jekyll'

module ExternalPosts
  class ExternalPostsGenerator < Jekyll::Generator
    safe true
    priority :high

    def generate(site)
      if site.config['external_sources'] != nil
        site.config['external_sources'].each do |src|
          p "Fetching external posts from #{src['name']}:"
          xml = HTTParty.get(src['rss_url']).body

          # Check if the response contains HTML instead of XML (as in Substack case)
          if xml.include?('<!DOCTYPE html>')
            p "Fetching Substack feed from local file"

            # Use the correct local file based on the source name
            if src['name'] == 'Academics in the Wild (substack.com)'
              xml = File.read('./substack1-clean.rss')
            elsif src['name'] == 'Aggie Inc. (substack.com)'
              xml = File.read('./substack2.rss')
            else
              p "Unknown Substack source, skipping..."
              next
            end
          end

          return if xml.nil?
          feed = Feedjira.parse(xml)
          feed.entries.each do |e|
            p "...fetching #{e.url}"
            slug = e.title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
            path = site.in_source_dir("_posts/#{slug}.md")
            doc = Jekyll::Document.new(
              path, { :site => site, :collection => site.collections['posts'] }
            )
            doc.data['external_source'] = src['name'];
            doc.data['feed_content'] = e.content;
            doc.data['title'] = "#{e.title}";
            doc.data['description'] = e.summary;
            doc.data['date'] = e.published;
            doc.data['redirect'] = e.url;
            site.collections['posts'].docs << doc
          end
        end
      end
    end
  end
end
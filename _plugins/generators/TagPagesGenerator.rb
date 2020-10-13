module Jekyll
  class TagPagesGenerator < Generator
    safe true
    def generate(site)
      dir = 'tags'
      site.tags.keys.each do |tag|
      write_tag_index(site, File.join(dir, tag), tag)
      end
    end
    def write_tag_index(site, dir, tag)
      index = TagIndex.new(site, site.source, dir, tag)
      index.render(site.layouts, site.site_payload)
      index.write(site.dest)
      site.pages << index
    end
  end

  class TagIndex < Page
    def initialize(site, base, dir, tag)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.md'
      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tag_index.md')
      self.data['tag'] = tag
      self.data['title'] = "\"#{tag}\" Posts"
    end
  end
end

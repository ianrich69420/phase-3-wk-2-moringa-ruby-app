class Author
    attr_reader :name

    @@authors = []

    def initialize(name)
        @name = name unless name.class != String
        @@authors << self
    end

    def self.all
        @@authors
    end

    def articles
        Article.all.select { |article| article.author == self }
    end

    def magazines
        magazines = Magazine.all.select { |magazine| magazine.name == self.name }
        magazines.uniq { |magazine| [magazine.name, magazine.category] } 
    end

    def add_article(magazine, title)
        Article.new(self, magazine, title)
    end

    def topic_areas
        magazines.map { |magazine| "#{magazine.category}" }
    end
end
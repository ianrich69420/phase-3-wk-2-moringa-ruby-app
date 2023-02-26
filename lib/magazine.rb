class Magazine
    attr_accessor :name, :category

    @@magazines = []

    def initialize(name, category)
        @name = name unless name.class != String
        @category = category unless category.class != String
        @@magazines << self
    end

    def self.all
        @@magazines
    end

    def contributors
        Author.all.select { |author| author.name == self.name }
    end

    def self.find_by_name(name)
        self.all.detect{|magazine| magazine.name == name}
    end

    def article_titles
        @magazine_articles =  Article.all.select { |article| self == article.magazine }
        @magazine_articles.map { |article| "#{article.title}" }
    end

    def contributing_authors
        contributing_authors = @magazine_articles.map { |article| article.author }
        contributing_author_names = contributing_authors.map { |author| author.name }
        contributing_authors.select { |author| contributing_author_names.count(author.name) > 1 }.uniq { |author| [author.name] }
    end
end
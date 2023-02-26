class Article
    attr_reader :title, :author, :magazine

    @@articles = []

    def initialize(author, magazine, title)
        @author = author unless author.class != Author
        @magazine = magazine unless magazine.class != Magazine
        @title = title unless title.class != String
        @@articles << self
    end

    def self.all
        @@articles
    end
end
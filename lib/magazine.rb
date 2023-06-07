class Magazine
    attr_reader :name, :category
    @@all = []

    def initialize(name, category)
        @name = name
        @category = category
        @@all << self
    end

    def self.all
        @@all
    end

    def contributors
        Article.all.filter { |article| article.magazine == self }.map { |article| article.author.name }.uniq
    end

    def self.find_by_name(name)
        @@all.find { |magazine| magazine.name == name }
    end

    def article_titles
        Article.all.select { |article| article.magazine == self }.map { |article| article.title }
    end
    
end
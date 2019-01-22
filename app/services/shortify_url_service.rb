class ShortifyUrlService
    def initialize(url)
      @url = url
    end

    def call
        return @url if return_if_exists
        create_short_url
        @shorty
    end

    private

    def create_short_url
        @shorty = Shorty.new
        @shorty.url = @url
        @shorty.short_url = shortify
        @shorty.save
    end

    def shortify
        chars = ['0'..'9', 'A'..'Z', 'a'..'z'].map { |range| range.to_a }.flatten
        8.times.map { chars.sample }.join
    end

    def return_if_exists
        exists_url = Shorty.find_by(url: @url)
        @url = exists_url.present? ? exists_url : @url
        exists_url
    end
end

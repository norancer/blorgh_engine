module Blorgh
  class ArticleDecorator < Draper::Decorator
    delegate_all

    def time_since_created
      Time.current - created_at
    end

    def summary
      "#{title} - #{text.truncate(20)}"
    end
  end
end

module Jekyll
  module CustomFilter
    def epoc_filter(posts, date_field, epoc)
        now = DateTime.now
        today = DateTime.new(now.year, now.month, now.day, 0, 0, 0, now.zone)

      posts.select do |post|
        postedOn = post.data[date_field].to_datetime

        if epoc == "future"
          if postedOn > today
              post
          end
        else
          if postedOn < today
              post
          end
        end
      end

    end
  end
end
Liquid::Template.register_filter(Jekyll::CustomFilter)
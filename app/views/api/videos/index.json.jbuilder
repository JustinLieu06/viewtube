@videos.each do |video|

  json.videos do

    json.set! video.id do
      json.extract! video, :id, :title, :description, :author_id
      json.author video.user.username
      json.video url_for(video.video)
      json.thumbnail url_for(video.thumbnail)
      json.published video.created_at.strftime("%B %d, %Y")
      json.likes video.likes.length
      json.dislikes video.dislikes.length
      json.userLikes video.likes_authors.include?(current_user)
      json.userDislikes video.dislikes_authors.include?(current_user)
      json.comments video.comments.to_h if video.comments.empty?

      json.comments do
        video.comments.each do |comment|
          json.set! comment.id do
            json.extract! comment, :id, :body, :video_id, :author_id
            json.username comment.user.username
            json.published comment.created_at.strftime("%B %d, %Y")
          end
        end
      end
    end

  end

end
class PostsWorker
  include Sneakers::Worker
  from_queue("dashboard.posts", env: nil)

  def work(raw_post)
    RecentPost.push(raw_post)
    ack!
  end
end
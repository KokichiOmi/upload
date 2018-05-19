class BlogMailer < ApplicationMailer

  def blog_mail(blog)
    @blog = blog
  
    mail to: @blog.user.email, subject: "ブログ投稿完了"
  end

end
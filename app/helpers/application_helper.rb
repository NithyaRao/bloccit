module ApplicationHelper
  def form_group_tag(errors, &block)
     if errors.any?
       content_tag :div, capture(&block), class: 'form-group has-error'
     else
       content_tag :div, capture(&block), class: 'form-group'
     end
  end

  def markdown_to_html(markdown)
    renderer = Redcarpet::Render::HTML.new
    extensions = {fenced_code_blocks: true}
    redcarpet = Redcarpet::Markdown.new(renderer, extensions)
    (redcarpet.render markdown).html_safe
  end

  def up_vote_link_classes(post)
     up_vote_link = (current_user.voted(post) && current_user.voted(post).up_vote?) ? 'voted' : ''
    "glyphicon glyphicon-chevron-up #{up_vote_link}"   
  end

  def down_vote_link_classes(post)
     down_vote_link = (current_user.voted(post) && current_user.voted(post).down_vote?) ? 'voted' : ''
    "glyphicon glyphicon-chevron-down #{down_vote_link}" 
  end 

end

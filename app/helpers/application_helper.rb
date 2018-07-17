module ApplicationHelper
 
  def title_h1_helper(title_h1)
    html = ''
    html << "<h1 class= 'mt-4 mb-3'>"
    title = title_h1.class.to_s
    title_h1.each do |item|
      html << item.capitalize 
      html << " " 
    end
    html << '</h1>'
    html.html_safe
  end



  def breadcrumbs_helper(breadcrumbs)
    html = ''
    html << "<ol class='breadcrumb'>"
    html << content_tag(:li, link_to(fa_icon('home')+ ' Home', root_path), class: 'breadcrumb-item')
    breadcrumbs.each do |item|
      case item.class.to_s
      when 'Array'
        string, link = item
        html << content_tag(:li, link_to(string, link), class: "breadcrumb-item #{item.equal?(breadcrumbs.last) ? 'active' : nil}")
      when 'String'
        html << content_tag(:li, item, class: "breadcrumb-item #{item.equal?(breadcrumbs.last) ? 'active' : nil}")
      end
    end
    html << '</ol>'
    html.html_safe
  end

end

module ApplicationHelper  

  # def localhost(&block)
  #   with_output_buffer(&block) if localhost? && port?(3000)      
  # end
  # 
  # def localhost?
  #    ['localhost', '127.0.0.1'].include?(request.host)
  # end
  # 
  # def port?(port_number)
  #    request.port == port_number
  # end
  # 
  # def admin(on = true, &block)
  #   with_output_buffer(&block) if admin_signed_in? && on || !admin_signed_in? && !on
  # end  
  # 
  # def admin_area(&block)
  #   admin do
  #     content = with_output_buffer(&block)      
  #     content_tag :div, content, :class => 'admin'    
  #   end
  # end  
  # 
  # def user_area(&block)
  #   user do
  #     content = with_output_buffer(&block)
  #     content_tag :div, content, :class => 'user'    
  #   end
  # end  
  # 
  # def roles_area(clazz, *user_roles, &block)
  #   roles user_roles do
  #     content = with_output_buffer(&block)
  #     content_tag :div, content, :class => clazz    
  #   end
  # end  
  # 
  # def user(on = true, &block)
  #   with_output_buffer(&block) if user_signed_in? && on || !user_signed_in? && !on
  # end  
  # 
  # def roles(*user_roles, &block)
  #   with_output_buffer(&block) if user_roles.flatten.any?{|role| warden.authenticate?(:scope => role.to_sym)}
  # end  

       
  def coderay(text)
    text.gsub!(/\<code(?: lang="(.+?)")?\>(.+?)\<\/code\>/m) do
      code = CodeRay.scan($2, $1).div(:css => :class)
      "<notextile>#{code}</notextile>"
    end
    return text.html_safe           
  end 
  
  def textile(text)
    RedCloth.new(text).to_html.html_safe    
  end
end

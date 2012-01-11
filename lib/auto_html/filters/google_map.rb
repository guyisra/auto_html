# encoding: UTF-8
AutoHtml.add_filter(:google_map).with(:width => 420, :height => 315, :style => "color:#000;text-align:left", :link_text => "크게 보기") do |text, options|
  regex = /(https?):\/\/maps\.google\.co\.kr\/maps\?(.*)/
  text.gsub(regex) do
    map_query = $2
    width = options[:width]
    height = options[:height]
    style = options[:style]
		link_text = options[:link_text]
    %{<iframe width="#{width}" height="#{height}" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.co.kr/maps?f=q&amp;source=s_q&amp;#{map_query}&amp;output=embed"></iframe><br /><small><a href="http://maps.google.co.kr/maps?f=q&amp;source=embed&amp;#{map_query}" style="#{style}">#{link_text}</a></small>}
  end
end

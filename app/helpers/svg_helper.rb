module SvgHelper
  def svg_use file, options = {}
    content_tag :svg, options do
    content_tag :use, nil, :'xlink:href' => asset_path(file)
    end
  end 
end

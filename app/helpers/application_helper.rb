module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "UIFPGARC"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def inline_svg(path)
  file = File.open("app/assets/images/#{path}", "rb")
  raw file.read
  end

end

class FallbackController < ActionController::Base
  def index
    render file: Rails.root.join("public", "static", "index.html"), layout: false
  end
end

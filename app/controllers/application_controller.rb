# class ApplicationController < ActionController::Base
#   # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
#   allow_browser versions: :modern

#   # Changes to the importmap will invalidate the etag for HTML responses
#   stale_when_importmap_changes
# end

class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    students_path # redirect to /students after login
  end

  def after_sign_out_path_for(resource_or_scope)
    new_student_session_path # redirect to login after logout
  end
end

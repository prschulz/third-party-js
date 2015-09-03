module ApplicationHelper
  # ==========================================
  #
  # Helpers
  #
    def current_page
      params["controller"] + "#" + params["action"]
    end

    # ======
    #
    # Body class
    #
    # Usage:
    # adds the controller-action to allow for specific page targeting in css/js.
    # TARGET SPARINGLY - css styles should be component based and not dependant on pages
    #
    def friendly_current_page
      begin
        params["controller"] + "-" + params["action"]
      rescue
        "example-app"
      end
    end
end

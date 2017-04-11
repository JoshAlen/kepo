class SessionsController < Clearance::SessionsController

	def create
	    @user = authenticate(params)

	    sign_in(@user) do |status|
	      if status.success?
	        redirect_to posts_path
	      else
	        flash.now.notice = status.failure_message
	        render template: "sessions/new", status: :unauthorized
	      end
	  end
	end

end
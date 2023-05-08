class PagesController < ApplicationController
  # controller handles all of the user actions

  def about
    # by default, rails is looking for a view called... about.html.erb
    # render 'about.html.erb'
  end

  def contact
    # params are a way to access the informatuion that's being passed along with the request
    # to pass variables into the view, we need an INSTANCE variable
    @members = ['doug', 'sylvain', 'trouni', 'sasha', 'yann']
    if params[:member].present?
      @members = @members.select do |member|
        member.start_with?(params[:member])
        # member == params[:member]
      end
    end
    # For tomorrow:
    # @members = Member.all
  end

  def home
  end
end

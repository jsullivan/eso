class WelcomeController < ApplicationController

def index
  @updates = Update.find(:all, :limit => 3, :order => 'created_at DESC')
end

end

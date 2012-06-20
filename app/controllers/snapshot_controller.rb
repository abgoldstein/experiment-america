class SnapshotController < ApplicationController
  def new
    
  end

  def create
    data = StringIO.new(Base64.decode64(params[:img]))
    data.class.class_eval { attr_accessor :original_filename, :content_type }
    data.original_filename = "screenshots.jpg"
    data.content_type = "image/jpg"
    image = data
    
    redirect_to :new
  end

  def index

  end
end
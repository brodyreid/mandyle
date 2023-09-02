require 'aws-sdk-s3'

class HomeController < ApplicationController
  def index
  end

  def about
  end

  def albums
    s3 = Aws::S3::Resource.new
    @image_objects = s3.bucket('mandyle-albums').objects

    @images_presigned_urls = @image_objects.map do |image_object|
      image_object.presigned_url(:get)
    end
  end

  def contact
  end
end

require 'aws-sdk-s3'

class AlbumsController < ApplicationController
  before_action :initialize_s3_resource, only: %i[index show_album]

  def index
    objects = @s3.bucket(AWS_BUCKET_NAME).objects(prefix: @prefix)
    @folders = objects.map { |object| object.key.split('/')[0..-2].join('/') }.uniq
  end

  def show_album
    folder_name = params[:folder_name]
    album_photos = @s3.bucket(AWS_BUCKET_NAME).objects(prefix: "#{folder_name}/")

    @photo_presigned_urls = album_photos.map do |photo|
      photo.presigned_url(:get)
    end
  end

  private

  def initialize_s3_resource
    @s3 = Aws::S3::Resource.new
  end
end

class ScreenShot < ActiveRecord::Base
  # has_attached_file :screenshot, :styles => {:thumb => '50x50', :square => '200x200' }
	
	# validates_attachment :screenshot, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
	# validates_attachment :screenshot, content_type: { content_type: /\Aimage\/.*\Z/ }

  mount_uploader :screenshot, ShotUploader

  def gen_screenshot!
  	Phantomjs.run('app/assets/javascripts/Shot.js', url)
    # self.screenshot = open('http://railscasts.com/assets/railscasts_logo-7101a7cd0a48292a0c07276981855edb.png')
    self.screenshot = File.open('public/screen_shots/temp.png')
    save!
  end

end



=begin
s = ScreenShot.new(url: 'https://www.google.co.in/')
s.gen_screenshot!

Paperclip::Errors::MissingRequiredValidatorError: Paperclip::Errors::MissingRequiredValidatorError

ActiveRecord::RecordInvalid: Validation failed: Screenshot Paperclip::Errors::NotIdentifiedByImageMagickError, Screenshot Paperclip::Errors::NotIdentifiedByImageMagickError
=end

#  Phantomjs.run('app/assets/javascripts/Shot.js', address>
# def gen_screenshot!
#   shot = ScreenShot.new(url, '200x200')
#   self.screenshot = open(shot.img_url)
#   save!
# end

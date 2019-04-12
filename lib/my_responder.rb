# lib/my_responder.rb
module MyApplicationResponder
  protected

  def json_resource_errors
    {
      success: false,
      errors: MyApplicationErrorFormatter.call(resource.errors)
    }
  end
end

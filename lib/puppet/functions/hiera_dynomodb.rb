Puppet::Functions.create_function(:hiera_dynamodb) do

  # begin
  #   require 'aws-sdk-dynamodb'
  # rescue LoadError => e
  #   raise Puppet::DataBinding::LookupError, "Must install lookup_http gem to use hiera-http"
  # end

  dispatch :lookup_key do
    param 'Variant[String, Numeric]', :key
    param 'Hash', :options
    param 'Puppet::LookupContext', :context
  end

  def lookup_key(key, options, context)

    return context.interpolate("42")

  end


end
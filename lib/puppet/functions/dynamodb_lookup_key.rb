Puppet::Functions.create_function(:dynamodb_lookup_key) do

  # begin
  #   require 'aws-sdk-dynamodb'
  # rescue LoadError => e
  #   raise Puppet::DataBinding::LookupError, "Must install lookup_http gem to use hiera-http"
  # end

  dispatch :dynamodb_lookup_key do
    param 'String[1]', :key
    param 'Hash[String[1],Any]', :options
    param 'Puppet::LookupContext', :context
  end

  def dynamodb_lookup_key(key, options, context)

    if key == "answertoall"
      return "42"
    end

    context.not_found
    return nil
  end


end
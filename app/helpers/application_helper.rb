module ApplicationHelper
  def join_and_clean(collection, separator = ', ')
    collection = [collection] if collection.is_a?(String)

    cleaned_collection = collection.reject(&:blank?) if collection.respond_to?(:reject)

    if cleaned_collection.nil? || cleaned_collection.empty?
      "None"
    else
      cleaned_collection.join(separator)
    end
  end
end
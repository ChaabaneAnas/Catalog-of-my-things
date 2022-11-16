module Validation
  def valid_date(publish_date)
    return unless publish_date == '' || publish_date !~ /\d{4}-\d{2}-\d{2}/

    puts 'Invalid date'
  end

  def valid_last_played(last_played_at)
    return unless last_played_at == '' || last_played_at !~ /\d{4}-\d{2}-\d{2}/

    puts 'Invalid date'
  end

  def valid_name(first_name)
    return unless first_name == '' || first_name !~ /[a-zA-Z]/

    puts 'Invalid name'
  end

  def valid_last_name(last_name)
    return unless last_name == '' || last_name !~ /[a-zA-Z]/

    puts 'Invalid name'
  end
end

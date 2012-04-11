atom_feed do |feed|
  feed.title("Holiday Request Atom Feed")

  @holidays.each do |holiday|
    feed.entry(holiday) do |entry|
      entry.title(holiday.user.username)
      entry.content(holiday.number_of_days)
    end
  end
end

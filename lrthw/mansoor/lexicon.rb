def convert_number(object)
  begin
    return Integer(object)
  rescue
    return nil
  end
end
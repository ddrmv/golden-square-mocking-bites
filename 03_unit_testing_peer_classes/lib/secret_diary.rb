class SecretDiary
  def initialize(diary)
    @diary = diary
    @locked = true
  end

  def read
    if @locked
      raise "Go away!"
    else
      return @diary.read
    end
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end
end
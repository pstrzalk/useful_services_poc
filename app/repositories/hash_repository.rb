module HashRepository
  def save(obj)
    @memory ||= {}
    obj.id ||= next_identity

    @memory[obj.id] = obj
  end

  def find(id)
    return unless @memory

    @memory[id]
  end

  def next_identity
    @memory ||= {}
    (@memory.keys.max || 0) + 1
  end
end

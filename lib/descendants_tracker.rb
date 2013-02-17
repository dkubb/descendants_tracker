# encoding: utf-8

# Module that adds descendant tracking to a class
module DescendantsTracker

  # Return the descendants of this class
  #
  # @example
  #   descendants = ParentClass.descendants
  #
  # @return [Array<Class>]
  #
  # @api public
  def descendants
    @descendants ||= []
  end

  # Add the descendant to this class and the superclass
  #
  # @param [Class] descendant
  #
  # @return [self]
  #
  # @api private
  def add_descendant(descendant)
    ancestor = superclass
    ancestor.add_descendant(descendant) if ancestor.respond_to?(:add_descendant)
    descendants.unshift(descendant)
    self
  end

private

  # Hook called when class is inherited
  #
  # @param [Class] descendant
  #
  # @return [self]
  #
  # @api private
  def inherited(descendant)
    super
    add_descendant(descendant)
  end

end # module DescendantsTracker

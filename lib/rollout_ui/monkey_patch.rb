class Rollout
  alias_method :original_active?, :active?

  def active?(feature, user)
    RolloutUI::Wrapper.new(self).add_feature(feature)
    original_active?(feature, user)
  end
end
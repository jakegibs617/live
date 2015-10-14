module Merit
  class BadgeRules
    include Merit::BadgeRulesMethods

    def initialize
      grant_on 'events#create', badge_id: 1, to: :user do |event|
        event.present?
      end

      grant_on 'comments#create', badge_id: 2, to: :user do |comment|
        comment.present?
      end

      grant_on 'comments#create', badge_id: 3, to: :user do |comment|
        comment.rating.present?
      end

      grant_on 'friendships#create', badge_id: 4, to: :user do |friendship|
        friendship.present?
      end
    end
  end
end

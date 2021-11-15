class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def show?
    true
  end
  def update?
    record.user == user
  end
  def create?
    user.present?
  end

  def destroy?
    update?
  end
end

# curl -i -X PATCH                                        \
#        -H 'Content-Type: application/json'              \
#        -H 'X-User-Email: edo@desu.com'               \
#        -H 'X-User-Token: --ep5crmv7myNTkkKwYY'          \
#        -d '{ "restaurant": { "name": "next mika" } }'    \
#        http://localhost:3000/api/v1/restaurants/1


# curl -i -X POST                                        \
#        -H 'Content-Type: application/json'              \
#        -H 'X-User-Email: edo@desu.com'               \
#        -H 'X-User-Token: --ep5crmv7myNTkkKwYY'          \
#        -d '{ "restaurant": { "name": "prueba", "address": "por ahi" } }'    \
#        http://localhost:3000/api/v1/restaurants

# curl -i -X DELETE                                        \
#        -H 'X-User-Email: edo@desu.com'               \
#        -H 'X-User-Token: --ep5crmv7myNTkkKwYY'          \
#        http://localhost:3000/api/v1/restaurants/5
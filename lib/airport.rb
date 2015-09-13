# Skapa en lista med plats för 2plan innehållande 1 plan
# Skriv en metod som kollar hur många plan som finns ilistan - om dem är mindre än 2 är flygplatsen inte full.

# om det finns 1 plan i listan kan det kallas till take off
class Airport
  def initialize
    places = ['plane']
    @nrplaces = places.length
  end

  def full?
      if @nrplaces <= 2
        true
      else
        return "You are not allowed to land"
      end
  end
end

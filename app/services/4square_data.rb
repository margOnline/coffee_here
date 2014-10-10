<% if @venues && @venues.count > 0 %>
  <table>
    <thead>
      <tr>
        <th>Name</th>
        <th>Address</th>
        <th>Popularity</th>
      </tr>
    </thead>
    <% @venues.each do |venue| %>
      <%= render :partial => "venue_detail", :locals => { :venue => venue } %>
    <% end %>
  </table>
  <p><a href ="#" class="js-view-map">View results on a map</a></p>
<% else %>
  <p>There are no coffee shops in <%= params[:postcode] %></p>
<% end %>

#<Hashie::Mash venues=[#<Hashie::Mash categories=[#<Hashie::Mash icon=#<Hashie::Mash prefix="https://ss3.4sqi.net/img/categories_v2/food/coffeeshop_" suffix=".png"> id="4bf58dd8d48988d1e0931735" name="Coffee Shop" pluralName="Coffee Shops" primary=true shortName="Coffee Shop">] contact=#<Hashie::Mash> hereNow=#<Hashie::Mash count=0 groups=[] summary="Nobody here"> id="51508a2be4b01c6c29ffb1cc" location=#<Hashie::Mash cc="GB" country="United Kingdom" distance=5894 formattedAddress=["United Kingdom"] lat=51.53316867151315 lng=-0.19375435577630332> name="coffee" referralId="v-1412890485" specials=#<Hashie::Mash count=0 items=[]> stats=#<Hashie::Mash checkinsCount=3 tipCount=0 usersCount=3> verified=false>,

#<Hashie::Mash categories=[#<Hashie::Mash icon=#<Hashie::Mash prefix="https://ss3.4sqi.net/img/categories_v2/travel/movingtarget_" suffix=".png"> id="4f2a23984b9023bd5841ed2c" name="Moving Target" pluralName="Moving Targets" primary=true shortName="Moving Target">] contact=#<Hashie::Mash> hereNow=#<Hashie::Mash count=0 groups=[] summary="Nobody here"> id="5165c284e4b06965a5b988cf" location=#<Hashie::Mash cc="GB" country="United Kingdom" distance=6935 formattedAddress=["United Kingdom"] lat=51.53592300415039 lng=-0.2082590013742447> name="coffee" referralId="v-1412890485" specials=#<Hashie::Mash count=0 items=[]> stats=#<Hashie::Mash checkinsCount=2 tipCount=1 usersCount=2> verified=false>,

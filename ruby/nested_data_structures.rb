building = {

  super: "Americo",

  elevator: false,

  address: "410 Ave X",

  quantity_of_apt: 4,  
   
  basement: ["laundry room", "compactor room"],

  apts_info: {

    first_floor: {

      a: {
        tenant_name: "Ivan Rojkov",
        layout: "1bd",
        balcony: false
      },

      b: {
        tenant_name: "Joe Brown",
        layout: "2bd",
        balcony: true 
      }
    },
    second_floor: {
      c: {
        tenant_name: "Jim Ritz",
        layout: "2bd",
        balcony: true
      },

      d: {
        tenant_name: "Kim Stanley",
        layout: "Studio",
        balcony: false 
      }
    }
  },
  amenities: ["rooftop", "laundry room"] 
}

puts building[:apts_info][:second_floor][:d][:balcony]
puts building[:amenities][1] 

puts building[:apts_info][:first_floor][:a][:layout]
puts building[:apts_info][:first_floor][:a][:layout]="3bd"

building[:amenities] << "gym"
building[:amenities].inspect

building[:basement].delete_at(1)
p building[:basement] 

puts building[:apts_info][:second_floor][:c].delete(:tenant_name)
p building[:apts_info][:second_floor][:c]
puts building[:apts_info][:second_floor][:c][:tenant_name]=nil
p building[:apts_info][:second_floor][:c]

building[:apts_info][:second_floor].merge!({ f: {tenant_name: "Joe Doe", layout: "1Bd", balcony: false }})
p building[:apts_info][:second_floor] 

 
 
 
 
 
 
 
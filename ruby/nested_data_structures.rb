my_building = {

  super: "Americo",

  elevator: false,

  address: "410 Ave X",

  quantity_of_apt: 9,  
   
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


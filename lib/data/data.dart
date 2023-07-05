class RawDataList{
  
    static List<Map<String, dynamic>> generateHotelList()=>[
    {
      'image':'one.png',
      'place':'Open Space',
      'destination':'London',
      'price':25
    },
    {
      'image':'two.png',
      'place':'Global Will',
      'destination':'London',
      'price':40
    },
    {
      'image':'three.png',
      'place':'Tallest Building',
      'destination':'Dubai',
      'price':68
    },
  ];

    static List<Map<String, dynamic>> generateTicketlList()=>[
      {
        'from':{
          'code':'NYC',
          'name':'New-York'
        },
        'to':{
          'code':'LDN',
          'name':'London'
        },
        'time':'8H 30M',
        'date':'1 May',
        'departure':'08:00 AM',
        'number':23
      },
      {
        'from':{
          'code':'DK',
          'name':'Dhaka'
        },
        'to':{
          'code':'SH',
          'name':'Shanghai'
        },
        'time':'4H 20M',
        'date':'22 June',
        'departure':'09:00 AM',
        'number':45
      },
    ];
}
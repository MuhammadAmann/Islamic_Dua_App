import 'package:flutter/material.dart';
import 'package:islamic_dua_app/provider/fav_provider.dart';
import 'package:islamic_dua_app/utils/colors.dart';
import 'package:provider/provider.dart';

class Favourite_Screen extends StatefulWidget {
  const Favourite_Screen({super.key});

  @override
  State<Favourite_Screen> createState() => Favourite_eScreenState();
}

class Favourite_eScreenState extends State<Favourite_Screen> {
  TextEditingController searchcontroller = TextEditingController();

  final List<String> items = [
    'Angry',
    'Anxious',
    'Bored',
    'Confident',
    'Confused',
    'Content',
    'Depressed',
    'Doubtful',
    'Grateful',
    'Greedy',
    'Guilty',
    'Happy',
    'Hurt',
    'Rage',
    'Indecisive',
    'Jealous',
    'Lazy',
    'Lonely',
    'Lost',
    'Nervous',
    'Uneasy',
    'Regret',
    'Sad',
    'Scared',
    // Add more items as needed
  ];
  final List<String> duas = [
    'My Lord, I seek protection with You from the promptings of the devils; and I seek protection in You, my Lord, from their coming near me. (23:97-98).',
    'Allah is sufficient for me. There is no god worthy of worship except Him. I have placed my trust in Him only and He is the Lord of the Magnificent Throne.',
    'My Lord, truly I am in dire need of any good which You may send me. (28:24)',
    'My Lord, enable me to be grateful for Your favour which You have bestowed upon me and upon my parents, and to do good deeds that please You. And admit me by Your mercy amongst Your righteous servants. (27:19)',
    'O Allah, grant us the best outcome in all of our affairs, and protect us from the humiliation of this world and the punishment of the hereafter.',
    'O Allah, all the favours that I or anyone from Your creation has received in the morning, are from You Alone. You have no partner. To You Alone belong all praise and all thanks.',
    'Allah is sufficient for me. There is no god worthy of worship except Him. I have placed my trust in Him only and He is the Lord of the Magnificent Throne.',
    'Oh Allah, if my intended action is best for me, make it destined and easy for me, and grant me Your Blessings in it.',
    'All praise is for Allah, Who provided us food and drink and Who sufficed us and has sheltered us; for how many have none to suffice them or shelter them.',
    'O Allah, I seek Your protection from anxiety and grief. I seek Your protection from inability and laziness. I seek Your protection from cowardice and miserliness, and I seek Your protection from being overcome by debt and being overpowered by men.',
    'My Lord, I have certainly wronged myself, so forgive me. (28:16)',
    'All praise is for Allah through whose blessing righteous actions are accomplished.',
    'To Allah we belong and unto Him is our return. O Allah, recompense me for my affliction and replace it for me with something better.',
    'Oh Allah, remove anger from my heart.',
    'O The Ever Living, The Sustainer of all. ; I seek assistance through Your mercy. Rectify all of my affairs and do not entrust me to myself for the blink of an eye.',
    'My Lord, I seek protection with You from the promptings of the devils; and I seek protection in You, my Lord, from their coming near me. (23:97-98)',
    'O The Ever Living, The Sustainer of all. ; I seek assistance through Your mercy. Rectify all of my affairs and do not entrust me to myself for the blink of an eye.',
    'Allah is sufficient for me. There is no god worthy of worship except Him. I have placed my trust in Him only and He is the Lord of the Magnificent Throne.',
    'My Lord, truly I am in dire need of any good which You may send me. (28:24)',
    'Allah is sufficient for me. There is no God worthy of worship except Him. I have placed my trust in Him only and He is the Lord of the Magnificent Throne.',
    'Oh Allah, descend upon me satisfaction that comes from you and open my chest and protect my heart with it.',
    'Our Lord, we have wronged ourselves. If You do not forgive us and have mercy upon us, we will surely be amongst the losers. (7:23)',
    'My Lord, I seek protection with You from the promptings of the devils; and I seek protection in You, my Lord, from their coming near me. (23:97-98)',
    'I seek protection in the perfect words of Allah from His anger and punishment, and from the evil of His servants, and from the evil suggestions of the devils and from them appearing to me.',

    // Add more items as needed
  ];
  // List<int> selecteditem = [];
  @override
  Widget build(BuildContext context) {
    print("object build");
    return SafeArea(
      child: Scaffold(
        backgroundColor: secondarycolor,
        appBar: AppBar(
          title: Text("Saved Dua's List"),
          centerTitle: true,
          backgroundColor: primarycolor,
          elevation: 2,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 3, left: 3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: GridView.builder(
                  itemCount: items.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          top: 5, left: 4, right: 4, bottom: 5),
                      child: InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return SizedBox(
                                child: AlertDialog(
                                  title: Center(
                                    child: Text(
                                      items[index].toString(),
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: primarycolor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  content: Text(
                                    duas[index].toString(),
                                    textAlign: TextAlign.center,
                                  ),
                                  actions: [
                                    Center(
                                        child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 80,
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: secondarycolor,
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                        child: Center(
                                          child: Text(
                                            "Close",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: primarycolor),
                                          ),
                                        ),
                                      ),
                                    ))
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: secondarycolor.withOpacity(.9)),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: primarycolor,
                                    spreadRadius: .5,
                                    blurRadius: 1,
                                    offset: const Offset(1, 1))
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Consumer<FavouriteItemprovider>(
                                      builder: (context, value, child) {
                                        return InkWell(
                                            onTap: () {
                                              print("object");
                                              if (value.selecteditems
                                                  .contains(index)) {
                                                value.removeitems(index);
                                              } else {
                                                value.additems(index);
                                              }
                                            },
                                            child: value.selecteditems
                                                    .contains(index)
                                                ? Icon(
                                                    Icons.favorite,
                                                    color: Color(0xff1c6758),
                                                  )
                                                : Icon(
                                                    Icons.favorite_border,
                                                    color: Color(0xff1c6758),
                                                  ));
                                      },
                                    ),
                                  )),
                              Image.asset(
                                "images/pray.png",
                                height: 50,
                              ),
                              // SizedBox(height: 8),
                              Text(
                                items[index].toString(),
                                style: TextStyle(
                                    fontSize: 16,
                                    color: primarycolor,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

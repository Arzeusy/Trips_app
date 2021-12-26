import 'package:flutter/material.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'package:platzi_trips_app/platzi_trips.dart';
import 'package:platzi_trips_app/shared/widgets/button_green.dart';
import 'package:platzi_trips_app/shared/widgets/gradient_back.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';


class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
  
    return _SignInScreenState();
  }
}


class _SignInScreenState extends State<SignInScreen> {

  late final UserBloc _userBloc ;

  @override
  Widget build(BuildContext context) {
    _userBloc = BlocProvider.of(context);

    return _handleCurrentSession();
  }

  Widget _handleCurrentSession(){

    return StreamBuilder(
      stream: _userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        // snapshot contiene la data - objeto user desde el firebase
        // 
        if  (!snapshot.hasData || snapshot.hasError){
          return signInGoogleUI();
        } else {
          return PlatziTrips();

        }

      },
    );

  }



  //  Methods

  Widget signInGoogleUI(){
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradienBack("", null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Welcome \n This is your trabel app" ,
                  style: TextStyle(
                    fontSize: 37.0,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                ButtonCreen(
                  texto: "Login Width Gmail",
                  onPressed: (){
                    _userBloc.signIn().then((value) => {
                      // ignore: avoid_print
                      print("------------------------------------------------------------------"),
                      // ignore: avoid_print
                      print(value?.displayName.toString())
                    });
                  },
                  width: 300.0,
                  height: 50.0,
                  borderRadius: 10.0,
                  iconName: "G",
                )
            ],
          )
        ],
      ),
    );

  }


}
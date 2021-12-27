import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'package:platzi_trips_app/User/model/user.dart';


class ProfileHeader extends StatelessWidget {
  String pathImageProfile = "";

  ProfileHeader( this.pathImageProfile, {Key? key}) : super(key: key);

  late final UserBloc _userBloc;

  @override
  Widget build(BuildContext context) {
    try { _userBloc = BlocProvider.of(context); }  
    catch (e) { print(e.toString());} 

    photo( {required String urlImage}) => Container(
      margin: const EdgeInsets.only(top: 20.0, right: 20.0),
      width: 80.0,
      height: 80.0,
      decoration:  BoxDecoration(
        border: Border.all(color: Colors.white),
        shape: BoxShape.circle,
        image: DecorationImage(
          // image: AssetImage(urlImage), 
          image:  NetworkImage(urlImage),
          fit: BoxFit.cover
        ),
      ),
    );

    Widget userData({ required UserModel  user}){

      return Row(
        children: [
          photo(urlImage: user.photo),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(
                user.name,
                style: const TextStyle(
                  fontFamily: "Lato",
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                  color: Colors.white
                ),
              ),
              Text(
                user.email,
                style: const TextStyle(
                  fontFamily: "Lato",
                  fontSize: 10.0,
                  color: Color.fromARGB(99, 255, 255, 255)
                ),
              ),
            ],
          ),

        ],
      );

    }

    userActionsButtons ({double size = 40, required var iconName, required VoidCallback onPressed }) => InkWell(
      child: Container(
        margin: const EdgeInsets.only(top:10.0),
        height: size,
        width: size,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Center(       
          child: Icon(
            iconName,
            size: size - 20,
            color: const Color(0xFF4268D3),
          )//Text(
          //   iconName,
          //   textAlign: TextAlign.center,
          //   style: TextStyle(fontFamily: 'MaterialIcons', color: Color(0xFF4268D3), fontSize: size -20, fontWeight: FontWeight.bold ),
          // ) ,
        ) //Icon(  IconData(iconCode, fontFamily: 'MaterialIcons'), color: Color(0xFF4268D3) ),
      ),
      onTap: onPressed,
    );

    final userActions = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        userActionsButtons(size: 40, iconName: Icons.vpn_key, onPressed: (){print("boton vpn key");}),
        // userActionsButtons(size: 40, iconName: Icons.payment),
        userActionsButtons(size: 60, iconName: Icons.add, onPressed: (){print("boton add");}),
        // userActionsButtons(size: 40, iconName: Icons.drafts),
        userActionsButtons(size: 40, iconName: Icons.exit_to_app, onPressed: (){_userBloc.signOut();}),
      ],
    );


  Widget showProfileData (AsyncSnapshot snapshot){
      print(snapshot);

    if(!snapshot.hasData || snapshot.hasError){
      return Container(
        margin: const EdgeInsets.only(
          top: 100.0,
          left: 20.0,
          right: 20.0,
          bottom: 20.0
        ),
        child: Column(
          children: const [
            CircularProgressIndicator(),
            Text("No se pudo cargar la informacion. Haz login"),
          ],
        )
      );
    } else {
      UserModel usuarioInformacion = UserModel(name: snapshot.data.displayName, email: snapshot.data.email, photo: snapshot.data.photoURL);
      return Container(
          margin: const EdgeInsets.only(
            top: 100.0,
            left: 20.0,
            right: 20.0,
            bottom: 20.0
          ),
          child: Column(
            children: [
              userData(user: usuarioInformacion ),
              userActions
            ],
          )
        );


    }


  }






    return StreamBuilder(
      stream: _userBloc.streamFireBase,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        switch(snapshot.connectionState){
          case ConnectionState.waiting:
            return const CircularProgressIndicator();
          case ConnectionState.none:
            return const CircularProgressIndicator();
          case ConnectionState.active:
            return showProfileData(snapshot);
          case ConnectionState.done:
            return showProfileData(snapshot);
          default:
            return const CircularProgressIndicator();
        }
      },
    );





  }


}
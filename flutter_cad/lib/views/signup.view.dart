import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {

  final _formekey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Form(
            key: _formekey,
            child: Column(
              children: <Widget>[
                Text("Cadastre-se"),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Nome",
                    labelStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    )
                  ),
                  validator: (value){
                    if(value.isEmpty){
                      return 'Nome Inválido';
                    }
                    return null;
                  },
                  onSaved: (val){
                   //user.name = val;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "E-Mail",
                      labelStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      )
                  ),
                  validator: (value){
                    if(value.isEmpty){
                      return 'E-Mail Inválido';
                    }
                    return null;
                  },
                  onSaved: (val){
                    //user.name = val;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      )
                  ),
                  validator: (value){
                    if(value.isEmpty){
                      return 'Senha Inválido';
                    }
                    return null;
                  },
                  onSaved: (val){
                    //user.name = val;
                  },
                ),
                FlatButton(
                  color: Theme.of(context).primaryColor,
                  child: Text("Cadastrar"),
                  onPressed: (){
                    if(_formekey.currentState.validate()){
                      _formekey.currentState.save();
                    }
                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

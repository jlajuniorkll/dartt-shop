import 'package:dartt_shop/consts.dart';
import 'package:dartt_shop/helpers/validators.dart';
import 'package:dartt_shop/models/user.dart';
import 'package:dartt_shop/models/user_manager.dart';
import 'package:dartt_shop/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BodyLogin extends StatefulWidget {
  const BodyLogin({Key? key}) : super(key: key);

  @override
  State<BodyLogin> createState() => _BodyLoginState();
}

class _BodyLoginState extends State<BodyLogin> {
  bool remember = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Form(
          key: formKey,
          child: Consumer<UserManager>(
            builder: (_, userManager, __) {
              return ListView(
                  padding: const EdgeInsets.all(16.0),
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        "assets/images/logo.png",
                        height: 100.0,
                      ),
                    ),
                    const SizedBox(
                      height: 26.0,
                    ),
                    TextFormField(
                      controller: _emailController,
                      enabled: !userManager.loading,
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: false,
                      validator: (email) {
                        if (email!.isNotEmpty && !emailValid(email)) {
                          return "Email inválido!";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        hintText: "Digite seu E-mail",
                        labelText: "E-mail",
                      ),
                    ),
                    const SizedBox(
                      height: 26.0,
                    ),
                    TextFormField(
                      controller: _senhaController,
                      enabled: !userManager.loading,
                      obscureText: true,
                      autocorrect: false,
                      validator: (senha) {
                        if (senha!.isEmpty || senha.length < 6) {
                          return "Senha Inválida";
                        } else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                        hintText: "Digite sua senha",
                        labelText: "Senha",
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Checkbox(
                            value: remember,
                            activeColor: kPrimaryColor,
                            onChanged: (value) {
                              setState(() {
                                remember = value!;
                              });
                            },
                          ),
                        ),
                        const Text("Lembrar-me"),
                        const Spacer(),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            child: const Text(
                              "Esqueci minha senha",
                              style: TextStyle(color: kPrimaryColor),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 26.0,
                    ),
                    SizedBox(
                      height: 44,
                      child: ElevatedButton(
                        onPressed: userManager.loading
                            ? null
                            : () {
                                if (formKey.currentState!.validate()) {
                                  userManager.signIn(
                                      user: Usuario(
                                          email: _emailController.text,
                                          senha: _senhaController.text),
                                      onFail: (e) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content: Text(e),
                                          backgroundColor: Colors.red,
                                        ));
                                      },
                                      onSuccess: () {
                                        // TODO: Fechar tela de login
                                      });
                                }
                              },
                        child: userManager.loading
                            ? const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircularProgressIndicator(),
                              )
                            : const Text("Entrar"),
                        style: styleButtonPrimary(),
                      ),
                    )
                  ]);
            },
          ),
        ),
      ),
    );
  }
}

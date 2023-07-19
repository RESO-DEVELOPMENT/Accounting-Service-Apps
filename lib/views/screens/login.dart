import 'package:accounting_service/view_models/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:scoped_model/scoped_model.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  // late LogInController controller;
  late OutlineInputBorder outlineInputBorder;
  late FocusNode _userNameFocus;
  final _formKey = GlobalKey<FormState>();
  // AccountData accountDao = AccountData();
  LoginViewModel model = LoginViewModel();
  String error = "";
  String userName = "deerstaff";
  String password = "123456";
  bool _passwordVisible = false;
  final _formUserNameFieldController = TextEditingController();
  final _formPasswordFieldController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _userNameFocus = FocusNode();
    _passwordVisible = false;
    model = Get.find<LoginViewModel>();

    outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
        color: Colors.transparent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModel<LoginViewModel>(
        model: model,
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  width:
                      context.isLandscape ? Get.width * 0.4 : Get.width * 0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Đăng nhập tài khoản',
                        style: Get.textTheme.titleLarge,
                      ),
                      SizedBox(height: 8),

                      //LOGIN FORM
                      SizedBox(
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              // USERNAME FORM FIELD
                              TextFormField(
                                controller: _formUserNameFieldController,
                                style: Get.textTheme.labelMedium,
                                inputFormatters: [
                                  FilteringTextInputFormatter.deny(" "),
                                ],
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Tài khoản không được để trống!";
                                  } else if (value.length > 50) {
                                    return "Tài khoản tối đa 50 chữ cái";
                                  } else {
                                    return null;
                                  }
                                },
                                onChanged: (value) => {
                                  setState(
                                    () => userName = value,
                                  )
                                },
                                decoration: InputDecoration(
                                    hintText: "Username",
                                    hintStyle: Get.textTheme.bodyMedium,
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    filled: true,
                                    isDense: true,
                                    labelStyle: Get.textTheme.labelLarge,
                                    fillColor: Get.theme.colorScheme.background,
                                    prefixIcon: Icon(
                                      Icons.portrait_rounded,
                                      color: Get.theme.colorScheme.onBackground,
                                    ),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        _formUserNameFieldController.text = "";
                                      },
                                      icon: Icon(Icons.clear),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Get.theme.colorScheme
                                                .primaryContainer,
                                            width: 2.0)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Get.theme.colorScheme
                                                .primaryContainer,
                                            width: 2.0)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Get.theme.colorScheme
                                                .primaryContainer,
                                            width: 2.0)),
                                    contentPadding: EdgeInsets.all(16),
                                    isCollapsed: true,
                                    errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Get.theme.colorScheme.error,
                                            width: 2.0))),
                                maxLines: 1,
                                focusNode: _userNameFocus,
                              ),
                              SizedBox(height: 8),
                              //PASSWORD FORM FIELD
                              TextFormField(
                                controller: _formPasswordFieldController,
                                obscureText: !_passwordVisible,
                                obscuringCharacter: "*",
                                style: Get.textTheme.bodyMedium,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Mật khẩu không được để trống!";
                                  } else if (value.length > 50) {
                                    return "Mật khẩu tối đa 50 chữ cái";
                                  } else {
                                    return null;
                                  }
                                },
                                onChanged: ((value) => setState(() {
                                      password = value;
                                    })),
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    filled: true,
                                    isDense: true,
                                    fillColor: Get.theme.colorScheme.background,
                                    prefixIcon: Icon(
                                      Icons.key,
                                      color: Get.theme.colorScheme.onBackground,
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        // Based on passwordVisible state choose the icon
                                        _passwordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _passwordVisible = !_passwordVisible;
                                        });
                                      },
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Get.theme.colorScheme
                                                .primaryContainer,
                                            width: 2.0)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Get.theme.colorScheme
                                                .primaryContainer,
                                            width: 2.0)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Get.theme.colorScheme
                                                .primaryContainer,
                                            width: 2.0)),
                                    contentPadding: EdgeInsets.all(16),
                                    hintStyle: Get.textTheme.bodyMedium,
                                    isCollapsed: true,
                                    errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                            color: Get.theme.colorScheme.error,
                                            width: 2.0))),
                                maxLines: 1,
                                cursorColor: Get.theme.colorScheme.onBackground,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      ScopedModelDescendant<LoginViewModel>(
                        builder: (context, child, model) => SizedBox(
                          width: Get.width,
                          height: 48,
                          child: FilledButton.tonal(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                model.posLogin(userName, password);
                              }
                            },
                            child: Text("Đăng nhập",
                                style: Get.textTheme.titleMedium),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class UserModel {
    final String? email;
    final String? password;

    UserModel({
        this.email,
        this.password,
    });

    UserModel copyWith({
        String? email,
        String? password,
    }) => 
        UserModel(
            email: email ?? this.email,
            password: password ?? this.password,
        );
}

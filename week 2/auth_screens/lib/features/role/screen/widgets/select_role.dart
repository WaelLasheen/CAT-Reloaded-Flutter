import 'package:auth_screens/core/utils/my_icons.dart';
import 'package:auth_screens/features/role/screen/widgets/role_field.dart';
import 'package:flutter/material.dart';

class SelectRole extends StatefulWidget {
  const SelectRole({super.key});

  @override
  State<SelectRole> createState() => _SelectRoleState();
}

class _SelectRoleState extends State<SelectRole> {
  bool isDesigner = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isDesigner = true;
            });
          },
          child: RoleField(
              image: MyIcons.designerIcon, text: 'Designer', isSelected: isDesigner),
        ),
        InkWell(
          onTap: () {
            setState(() {
              isDesigner = false;
            });
          },
          child: RoleField(
              image: MyIcons.clientIcon, text: 'Client', isSelected: !isDesigner),
        ),
      ],
    );
  }
}
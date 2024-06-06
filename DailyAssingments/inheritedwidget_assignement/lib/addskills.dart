import 'package:flutter/material.dart';
import 'package:inheritedwidget_assignement/inheritedwidget.dart';

class AddSkills extends StatefulWidget {
  const AddSkills({super.key});

  @override
  State createState() => _AddSkillsState();
}

class _AddSkillsState extends State {
  TextEditingController skillsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    EmployeeData obj2 = EmployeeData.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 50,
                width: 350,
                child: TextFormField(
                  controller: skillsController,
                  decoration: InputDecoration(
                      hintText: "Enter Employee Skills",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  obj2.empObj.skills.add(skillsController.text);
                  skillsController.clear();
                  setState(() {});
                },
                child: Container(
                  height: 50,
                  width: 200,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "ADD",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const Divider(
                thickness: 1.5,
                color: Colors.purple,
              ),
              Container(
                height: 400,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ListView.builder(
                  itemCount: obj2.empObj.skills.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 30,
                      width: 200,
                      margin: const EdgeInsets.only(bottom: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      //margin: const EdgeInsets.only(top: 10),
                      child: Text(
                        "${obj2.empObj.skills[index]}",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 20),
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

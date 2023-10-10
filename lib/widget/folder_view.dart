import 'package:flutter/material.dart';

class FolderView extends StatelessWidget {
  final String name;
  final List<String> imagesList;

  const FolderView(this.name, this.imagesList, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                childAspectRatio: 3 / 2,
                mainAxisSpacing: 10.0,
              ),
              itemCount: imagesList.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (index < imagesList.length) {
                  return Expanded(
                    child: GridTile(
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            imagesList[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                } else {
                  return Expanded(
                    child: GridTile(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(19, 69, 106, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: IconButton(
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

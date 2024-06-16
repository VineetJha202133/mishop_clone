import 'package:flutter/material.dart';
import 'package:mishop/modules/category_module/widgets/build_view.dart';
import 'package:mishop/utils/appColor.dart';
import 'package:mishop/utils/assetPath.dart';

class CategorySearchView extends StatefulWidget {
  const CategorySearchView({super.key});

  @override
  State<CategorySearchView> createState() => _CategorySearchViewState();
}

class _CategorySearchViewState extends State<CategorySearchView> {

  
   bool isGridView = false;
  @override
  Widget build(BuildContext context) {

    final mediaQueryWidth = MediaQuery.of(context).size.width;
    // final mediaQueryHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(42),
                            borderSide: BorderSide(color: lightestGrey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(42),
                            borderSide: BorderSide(color: lightestGrey)),
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                        contentPadding: EdgeInsets.symmetric(vertical: 14.0,),
                        fillColor: whiteColor,
                        filled: true
                        ),
                  ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.06),
            child: Column(
              children: [               
          
                SizedBox(height: 20,),
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Categories', style: TextStyle(fontFamily: 'Roboto', fontSize: 20, fontWeight: FontWeight.w500, color: activeText),),
          
                    GestureDetector(
                      onTap: () {
                        isGridView = !isGridView;
                        setState(() {
                                    
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                        border: Border.all(color: lightestGrey),
                        borderRadius: BorderRadius.circular(5)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset(isGridView ? listCategoryDesign : categoryDesign),
                        ),
                      ),
                    ),
          
          
                  ],
                ),
          
                const SizedBox(height: 20,),
          
                isGridView ? buildGridView() : buildListView(),
          
          
                
              ],
            ),
          ),
        ),
      ),

  
    );
  }
}
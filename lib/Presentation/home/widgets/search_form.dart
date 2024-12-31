import 'package:flutter/material.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    super.key,
    required GlobalKey<FormState> searchFormKey,
    required TextEditingController searchTEController,
  })  : _searchFormKey = searchFormKey,
        _searchTEController = searchTEController;

  final GlobalKey<FormState> _searchFormKey;
  final TextEditingController _searchTEController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _searchFormKey,
      child: TextFormField(
        controller: _searchTEController,
        decoration: const InputDecoration(
          hintText: HomeStrings.kSearchHintText,
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.search_outlined),
          ),
        ),
        validator: FormValidators.searchValidate,
      ),
    );
  }
}

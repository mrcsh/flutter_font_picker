import 'package:flutter/material.dart';

class FontSearch extends StatefulWidget {
  final ValueChanged<String> onSearchTextChanged;
  const FontSearch({super.key, required this.onSearchTextChanged});

  @override
  _FontSearchState createState() => _FontSearchState();
}

class _FontSearchState extends State<FontSearch> {
  bool _isSearchFocused = false;
  TextEditingController searchController = TextEditingController();
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    return FocusScope(
      child: Focus(
        onFocusChange: (final focus) {
          setState(
            () {
              _isSearchFocused = focus;
            },
          );
        },
        child: TextField(
          controller: searchController,
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
            ),
            suffixIcon: _isSearchFocused
                ? IconButton(
                    icon: const Icon(Icons.cancel),
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      searchController.clear();
                      widget.onSearchTextChanged('');
                    },
                  )
                : null,
            hintText: "Search...",
            hintStyle: const TextStyle(fontSize: 14.0),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
          onChanged: widget.onSearchTextChanged,
        ),
      ),
    );
  }
}

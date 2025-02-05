import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CodeBlock extends StatelessWidget {
  final String code;
  final String language;

  const CodeBlock({super.key, required this.code, this.language = ''});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(39, 39, 39, 1),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                language,
                style: const TextStyle(color: Colors.white, fontSize: 11),
              ),
              SizedBox(
                height: 25,
                width: 25,
                child: FittedBox(
                  child: IconButton(
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: code)).then((_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Code copied to clipboard')),
                        );
                      });
                    },
                    icon: const Icon(
                      Icons.copy,
                      color: Color.fromRGBO(190, 190, 190, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(32, 32, 32, 1),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Text(
            code.trim(),
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../importer.dart';
import '../widgets/icon_button_no_padding.dart';
import '../widgets/user_avatar.dart';

class TweetCreatePage extends StatelessWidget {
  const TweetCreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: _TweetCreatePageContent(),
      ),
    );
  }
}

class _TweetCreatePageContent extends StatelessWidget {
  const _TweetCreatePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(padding: EdgeInsets.all(10.0), child: _Header()),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: _Content(),
          ),
        ),
        Divider(height: 0, thickness: 0.3),
        Padding(padding: EdgeInsets.all(10.0), child: _ReplyFooter()),
        Divider(height: 0, thickness: 0.3),
        Padding(padding: EdgeInsets.all(10.0), child: _TweetFooter()),
      ],
    );
  }
}

class _Header extends ConsumerWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(newTweetItem);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButtonNoPadding(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
        ElevatedButton(
          onPressed: ref.watch(newTweetItem.notifier).count == 0
              ? null
              : () async {
                  final data = ref.read(newTweetItem.notifier).getTweet();
                  Navigator.of(context).pop();
                  await ref.read(tweetList.notifier).insert(data);
                },
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            shape: const StadiumBorder(),
            elevation: 0,
          ),
          child: const Text("ツイートする"),
        ),
      ],
    );
  }
}

class _Content extends ConsumerWidget {
  const _Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 12.0),
          child: UserAvatar(radius: 15, imgUrl: ref.watch(currentUser).iconUrl),
        ),
        Expanded(
          child: TextField(
            onChanged: (value) {
              ref.watch(newTweetItem.notifier).setTweetMessage(value);
            },
            decoration: const InputDecoration(
              hintText: 'いまどうしてる？',
              border: InputBorder.none,
              // 以下3つはPaddingの設定
              contentPadding: EdgeInsets.zero,
              isDense: true,
              isCollapsed: true,
            ),
            inputFormatters: [LengthLimitingTextInputFormatter(140)],
            style: const TextStyle(fontSize: 22),
            autofocus: true,
            keyboardType: TextInputType.multiline,
            maxLines: null,
          ),
        ),
      ],
    );
  }
}

class _ReplyFooter extends StatelessWidget {
  const _ReplyFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.public,
          color: Colors.blue,
          size: 25,
        ),
        SizedBox(width: 10),
        Text(
          "全員が返信できます",
          style: TextStyle(color: Colors.blue, fontSize: 15),
        ),
      ],
    );
  }
}

class _TweetFooter extends StatelessWidget {
  const _TweetFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        _TweetFooterLeft(),
        _TweetFooterRight(),
      ],
    );
  }
}

class _TweetFooterLeft extends StatelessWidget {
  const _TweetFooterLeft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final picker = ImagePicker();
    return Row(
      children: [
        IconButtonNoPadding(
          icon: const Icon(Icons.photo_outlined, size: 25),
          onPressed: () async {
            final pickedFile =
                await picker.pickImage(source: ImageSource.camera);

            if (pickedFile != null) {
              print('Image selected.');

              // _image = File(pickedFile.path);
            } else {
              print('No image selected.');
            }
          },
          color: Colors.blue,
        ),
        const SizedBox(width: 20),
        IconButtonNoPadding(
          icon: const Icon(Icons.gif_box_outlined, size: 25),
          onPressed: () {},
          color: Colors.blue,
        ),
        const SizedBox(width: 20),
        IconButtonNoPadding(
          icon: const Icon(Icons.auto_graph_outlined, size: 25),
          onPressed: () {},
          color: Colors.blue,
        ),
        const SizedBox(width: 20),
        IconButtonNoPadding(
          icon: const Icon(Icons.location_on_outlined, size: 25),
          onPressed: () {},
          color: Colors.blue,
        ),
      ],
    );
  }
}

class _TweetFooterRight extends ConsumerWidget {
  const _TweetFooterRight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(newTweetItem);

    return SizedBox(
      width: 20,
      height: 20,
      child: CircularProgressIndicator(
        value: ref.watch(newTweetItem.notifier).count / 140,
        strokeWidth: 2.0,
        backgroundColor: Colors.grey.shade300,
      ),
    );
  }
}

import 'package:meta/meta.dart';
import 'package:social_app_demo/data/net/models/response/post/post.dart';
import 'package:social_app_demo/data/net/models/response/user/user.dart';
import 'package:social_app_demo/presentation/base/bloc/base_bloc.dart';

part 'post_event.dart';

part 'post_state.dart';

class PostBloc extends BaseBloc {
  PostBloc(this.user);

  final User user;

  @override
  Stream<BaseBlocState> mapChildEventToState(BaseEvent event) async* {
    if (event is GetAllPostsEvent) {
      yield await _getPosts();
    } else {
      yield LoadingState(event);
    }
  }

  Future<BaseBlocState> _getPosts() {
    return api.getPostsByUserId(user.id).then((PostContainer value) {
      return GetPostsState(value);
    }).catchError(handleApiError);
  }
}

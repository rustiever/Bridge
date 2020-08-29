class Api {
  //Auth Section...
  //User Register...
  static const register =
      'https://us-central1-bridge-fd58f.cloudfunctions.net/auth/register';
  //User Login...
  static const login =
      'https://us-central1-bridge-fd58f.cloudfunctions.net/auth/login';
  //User Logout...
  static const logout =
      'https://us-central1-bridge-fd58f.cloudfunctions.net/auth/logout';

  //Anonymous User API Section...
  static const anonymousPage =
      'https://us-central1-bridge-fd58f.cloudfunctions.net/anonymous/home';

  //Feeds Section...
  //Do the Post...
  static const post =
      'https://us-central1-bridge-fd58f.cloudfunctions.net/home/post';
  //Like or Dislike the post...
  static const like =
      'https://us-central1-bridge-fd58f.cloudfunctions.net/home/like';
  //Bookmark or Un-Bookmark the Post...
  static const bookmark =
      'https://us-central1-bridge-fd58f.cloudfunctions.net/home/bookmark';
  //Delete the specific Comment of a Post...
  static const delComment =
      'https://us-central1-bridge-fd58f.cloudfunctions.net/home/deleteComment';
  //Edit the specific Comment of a Post...
  static const editComment =
      'https://us-central1-bridge-fd58f.cloudfunctions.net/home/editComment';
  //Get the Comments of a specific Post...
  static const getComments =
      'https://us-central1-bridge-fd58f.cloudfunctions.net/home/getComments';
  //Delete the specific Post...
  static const delPost =
      'https://us-central1-bridge-fd58f.cloudfunctions.net/home/deletePost';
}

// Base url of the app
const String BASE_URL = 'https://jsonplaceholder.typicode.com';

// End points
const String users = '/users';
const String posts = '/posts';
const String comments = '/comments';

// Requests
const String getUsersRequest = '$BASE_URL/users';
const String getPostsByUserIdRequest = '$BASE_URL$posts';
const String getCommentsByPostIdRequest = '$BASE_URL$comments';

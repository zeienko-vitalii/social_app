// Base url of the app
const String baseUrl = 'https://jsonplaceholder.typicode.com';

// End points
const String users = '/users';
const String posts = '/posts';
const String comments = '/comments';

// Requests
const String getUsersRequest = '$baseUrl/users';
const String getPostsByUserIdRequest = '$baseUrl$posts';
const String getCommentsByPostIdRequest = '$baseUrl$comments';

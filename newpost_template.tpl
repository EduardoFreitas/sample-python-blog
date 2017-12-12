<!doctype HTML>
<html>
<head>
    <title>Criar um novo post</title>
</head>
<body>
%if (username != None):
     {{username}} <a href="/logout">Logout</a> | <a href="/newpost">New Post</a> | <a href="/newcategory">New Category</a>
<p>
%end
<form action="/newpost" method="POST">
    <h2>Title</h2>
    <input type="text" name="subject" size="120" value="{{subject}}"><br>
    <h2>Blog Entry</h2>
    <textarea name="body" cols="120" rows="20">{{body}}</textarea><br>
    <h2>Category</h2>
    <select name="category">
        %for cate in categorys:
          <option value="{{cate['name']}}">{{cate['name']}}</option>
        %end
    </select>
    <h2>Tags</h2>
    Separados por virgula, por favor<br>
    <input type="text" name="tags" size="120" value="{{tags}}"><br>
    <p>
        <input type="submit" value="Submit">
    </p>
</form>
</body>
</html>
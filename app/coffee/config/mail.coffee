module.exports = (admin, user, group) ->

  mailOptions :
    'from': 'Scott Moss <scottmoss35@gmail.com>'
    'to'  : admin.email
    'subject': "SweatR -- #{group.name} request"
    'html': "<h1>Hello #{admin.username}</h1>" +
      "<p> This person, #{user} wants to join your group"+
      " #{group.name}.</p> <table cellpadding='0'"+
      "cellspacing='0' border='0'> <tr> <td bgcolor='#f02d37'"+
      "background='' height='100' width='300'"+
      "style='color:#FFFFFF; font-family:"+
      "Times New Roman, Times, serif;' align='center'"+
      "valign='middle'> <a href='http://"+
      "localhost:3000/add/#{group.name}/#{user}'"+
      "style='color:#FFFFFF; text-decoration:none;'>"+
      "Add user</a> </td> </tr> </table>"
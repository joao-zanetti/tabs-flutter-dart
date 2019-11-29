##Description
Tabs navigation composed by two screens, passing user data between them.<br/>
Considering that data was read or insert before the call Tabspage <br/>

### Call tabspage example:<br/>
```
var = myUser;
myUser= "";  //"" read from database or insert the values before the call bellow;
Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => TabsPage(myUser)))

```




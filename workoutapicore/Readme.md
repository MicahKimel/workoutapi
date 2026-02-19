Need to add unit testing

for unit tests return as IAction result & 
```
var result = await controller.Endpt(Obj);
var response = JsonConvert.SerializeObject(result);
var obj = JsonConvert.DeserializeAnonymousType(response, new { Value = new MyModel() });
```

# club_fitness

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



routes 
Get.to(objeto)
Get.toNamed(ruta) => para cambiar de pagina y poder volver

Get.off(objecto)
Get.offNamed(ruta) => para cambiar de pagina sin poder volver

para enviar argumentos :
Get.toNamed('ruta', arguments: '')
y se resiven :
var argumentos = Get.arguments(); // de tipo dynamic

para volver:
Get.back();
para volver con datos nuevos :
Get.back(result: variable );

para recibir ese dato de vuelta 

Future<Type> funcion async (){

   var variable =  await Get.toNamed();

   if(variable != null){
       do something
   }
}


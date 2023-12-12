using System.Web;
using System.Web.Mvc;

namespace AriasRomanJonathan_Proyecto2
{
   public class FilterConfig
   {
      public static void RegisterGlobalFilters(GlobalFilterCollection filters)
      {
         filters.Add(new HandleErrorAttribute());
      }
   }
}

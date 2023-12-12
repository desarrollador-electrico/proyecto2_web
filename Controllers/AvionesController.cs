using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using System.Web.WebPages;
using AriasRomanJonathan_Proyecto2;

namespace AriasRomanJonathan_Proyecto2.Controllers
{
    public class AvionesController : Controller
    {
        private PortavionesDBEntities db = new PortavionesDBEntities();

        // GET: Aviones
        public ActionResult Index()
        {
            var aviones = db.Aviones.Include(a => a.EstadoAvion).Include(a => a.MarcaAvion).Include(a => a.ModeloAvion).Include(a => a.Tecnicos);
            return View(aviones.ToList());
        }

        // GET: Aviones/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Aviones aviones = db.Aviones.Find(id);
            if (aviones == null)
            {
                return HttpNotFound();
            }
            return View(aviones);
        }

        // GET: Aviones/Create
        public ActionResult Create()
        {
            ViewBag.EstadoID = new SelectList(db.EstadoAvion, "ID", "Estado");
            ViewBag.MarcaID = new SelectList(db.MarcaAvion, "ID", "NombreMarca");
            ViewBag.ModeloID = new SelectList(db.ModeloAvion, "ID", "NombreModelo");
            ViewBag.TecnicoID = new SelectList(db.Tecnicos, "ID", "Nombre");
            return View();
        }

        // POST: Aviones/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,MarcaID,ModeloID,TecnicoID,NumeroSerie,NombreFantasia,AnchoAlaAla,Alto,LargoPuntaCola,DistanciaMaxima,EstadoID,FechaIngreso,CantidadInventario")] Aviones aviones)
        {
            Operaciones op_reg = new Operaciones(); // Crea un objeto
            if (ModelState.IsValid)
            {
                op_reg.TipoID = 1; // Ingreso de Avión
                op_reg.Fecha = DateTime.Now;
                op_reg.TecnicoID = aviones.TecnicoID;
                op_reg.AvionID = aviones.ID;
                op_reg.DetallesTecnicos = "Se ingresa un nuevo avión al inventario.";
                db.Operaciones.Add(op_reg);
                aviones.FechaIngreso = DateTime.Now;
                db.Aviones.Add(aviones);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.EstadoID = new SelectList(db.EstadoAvion, "ID", "Estado", aviones.EstadoID);
            ViewBag.MarcaID = new SelectList(db.MarcaAvion, "ID", "NombreMarca", aviones.MarcaID);
            ViewBag.ModeloID = new SelectList(db.ModeloAvion, "ID", "NombreModelo", aviones.ModeloID);
            ViewBag.TecnicoID = new SelectList(db.Tecnicos, "ID", "Nombre", aviones.TecnicoID);
            return View(aviones);
        }

        // GET: Aviones/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Aviones aviones = db.Aviones.Find(id);
            if (aviones == null)
            {
                return HttpNotFound();
            }
            ViewBag.EstadoID = new SelectList(db.EstadoAvion, "ID", "Estado", aviones.EstadoID);
            ViewBag.MarcaID = new SelectList(db.MarcaAvion, "ID", "NombreMarca", aviones.MarcaID);
            ViewBag.ModeloID = new SelectList(db.ModeloAvion, "ID", "NombreModelo", aviones.ModeloID);
            ViewBag.TecnicoID = new SelectList(db.Tecnicos, "ID", "Nombre", aviones.TecnicoID);
            return View(aviones);
        }

        // POST: Aviones/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,MarcaID,ModeloID,TecnicoID,NumeroSerie,NombreFantasia,AnchoAlaAla,Alto,LargoPuntaCola,DistanciaMaxima,EstadoID,CantidadInventario")] Aviones aviones)
        {
            Operaciones op_reg = new Operaciones(); // Crea un objeto
            if (ModelState.IsValid)
            {
                op_reg.TipoID = 6; // Actualización de Avión
                op_reg.Fecha = DateTime.Now;
                op_reg.TecnicoID = aviones.TecnicoID;
                op_reg.AvionID = aviones.ID;
                op_reg.DetallesTecnicos = "Se actualiza un avión existente en el inventario.";
                db.Operaciones.Add(op_reg);
                aviones.FechaIngreso = DateTime.Now;
                db.Entry(aviones).State = EntityState.Modified;
                db.Operaciones.Add(op_reg);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.EstadoID = new SelectList(db.EstadoAvion, "ID", "Estado", aviones.EstadoID);
            ViewBag.MarcaID = new SelectList(db.MarcaAvion, "ID", "NombreMarca", aviones.MarcaID);
            ViewBag.ModeloID = new SelectList(db.ModeloAvion, "ID", "NombreModelo", aviones.ModeloID);
            ViewBag.TecnicoID = new SelectList(db.Tecnicos, "ID", "Nombre", aviones.TecnicoID);
            return View(aviones);
        }

        // GET: Aviones/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Aviones aviones = db.Aviones.Find(id);
            if (aviones == null)
            {
                return HttpNotFound();
            }
            return View(aviones);
        }

        // POST: Aviones/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Aviones aviones = db.Aviones.Find(id);
            db.Aviones.Remove(aviones);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

         public JsonResult GetModelosPorMarca(int marcaId)
         {
            var modelosList = db.ModeloAvion.Where(m => m.MarcaID == marcaId).Select(m => new
            {
               ID = m.ID,
               NombreModelo = m.NombreModelo
            }).ToList();

            return Json(modelosList, JsonRequestBehavior.AllowGet);
         }

      protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}

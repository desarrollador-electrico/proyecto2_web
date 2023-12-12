using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using AriasRomanJonathan_Proyecto2;

namespace AriasRomanJonathan_Proyecto2.Controllers
{
    public class MisionesController : Controller
    {
        private PortavionesDBEntities db = new PortavionesDBEntities();

        // GET: Misiones
        public ActionResult Index()
        {
            var misiones = db.Misiones.Include(m => m.Aviones).Include(m => m.EstadoMision).Include(m => m.Tecnicos);
            return View(misiones.ToList());
        }

        // GET: Misiones/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Misiones misiones = db.Misiones.Find(id);
            if (misiones == null)
            {
                return HttpNotFound();
            }
            return View(misiones);
        }

        // GET: Misiones/Create
        public ActionResult Create()
        {
            ViewBag.AvionID = new SelectList(db.Aviones, "ID", "NumeroSerie");
            ViewBag.EstadoID = new SelectList(db.EstadoMision, "ID", "Estado");
            ViewBag.TecnicoID = new SelectList(db.Tecnicos, "ID", "Nombre");
            return View();
        }

        // POST: Misiones/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,NumeroDespegue,NombreMision,FechaDespegue,FechaAterrizaje,EstadoID,DetallesMision,AvionID,TecnicoID,NombrePiloto")] Misiones misiones)
        {
            Operaciones op_reg = new Operaciones(); // Crea un objeto
            int id_mision = 0;
            if (ModelState.IsValid)
            {
                op_reg.TipoID = 7; // Despegue de Misión
                op_reg.Fecha = DateTime.Now;
                op_reg.TecnicoID = misiones.TecnicoID;
                op_reg.AvionID = misiones.AvionID;
                op_reg.DetallesTecnicos = "Se registra un despegue de avión para una misión.";
                db.Operaciones.Add(op_reg);
                misiones.NumeroDespegue = DateTime.Now.Year.ToString() + "-DE-" + id_mision.ToString("D5");
                db.Misiones.Add(misiones);
                db.SaveChanges();

                // Logica para generar el Numero de Despegue
                id_mision = misiones.ID;
                misiones.NumeroDespegue = DateTime.Now.Year.ToString() + "-DE-" + id_mision.ToString("D5");               
                db.Entry(misiones).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            ViewBag.AvionID = new SelectList(db.Aviones, "ID", "NumeroSerie", misiones.AvionID);
            ViewBag.EstadoID = new SelectList(db.EstadoMision, "ID", "Estado", misiones.EstadoID);
            ViewBag.TecnicoID = new SelectList(db.Tecnicos, "ID", "Nombre", misiones.TecnicoID);
            return View(misiones);
        }

        // GET: Misiones/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Misiones misiones = db.Misiones.Find(id);
            if (misiones == null)
            {
                return HttpNotFound();
            }
            ViewBag.AvionID = new SelectList(db.Aviones, "ID", "NumeroSerie", misiones.AvionID);
            ViewBag.EstadoID = new SelectList(db.EstadoMision, "ID", "Estado", misiones.EstadoID);
            ViewBag.TecnicoID = new SelectList(db.Tecnicos, "ID", "Nombre", misiones.TecnicoID);
            return View(misiones);
        }

        // POST: Misiones/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,NumeroDespegue,NombreMision,FechaDespegue,FechaAterrizaje,EstadoID,DetallesMision,AvionID,TecnicoID,NombrePiloto")] Misiones misiones)
        {
            Operaciones op_reg = new Operaciones(); // Crea un objeto
            if (ModelState.IsValid)
            {
                op_reg.TipoID = 8; // Aterrizaje de Misión
                op_reg.Fecha = DateTime.Now;
                op_reg.TecnicoID = misiones.TecnicoID;
                op_reg.AvionID = misiones.AvionID;
                op_reg.DetallesTecnicos = "Se registra un aterrizaje de avión para una misión.";
                db.Operaciones.Add(op_reg);
                db.Entry(misiones).State = EntityState.Modified;
                db.Operaciones.Add(op_reg);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.AvionID = new SelectList(db.Aviones, "ID", "NumeroSerie", misiones.AvionID);
            ViewBag.EstadoID = new SelectList(db.EstadoMision, "ID", "Estado", misiones.EstadoID);
            ViewBag.TecnicoID = new SelectList(db.Tecnicos, "ID", "Nombre", misiones.TecnicoID);
            return View(misiones);
        }

        // GET: Misiones/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Misiones misiones = db.Misiones.Find(id);
            if (misiones == null)
            {
                return HttpNotFound();
            }
            return View(misiones);
        }

        // POST: Misiones/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Operaciones op_reg = new Operaciones(); // Crea un objeto
            Misiones misiones = db.Misiones.Find(id);
            op_reg.TipoID = 11; // Eliminar Misión
            op_reg.Fecha = DateTime.Now;
            op_reg.TecnicoID = misiones.TecnicoID;
            op_reg.AvionID = misiones.AvionID;
            op_reg.DetallesTecnicos = "Se elimina una misión registrada.";
            db.Operaciones.Add(op_reg);
            db.Misiones.Remove(misiones);
            db.SaveChanges();
            return RedirectToAction("Index");
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

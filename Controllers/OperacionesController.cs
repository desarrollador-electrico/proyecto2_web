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
    public class OperacionesController : Controller
    {
        private PortavionesDBEntities db = new PortavionesDBEntities();

        // GET: Operaciones
        public ActionResult Index()
        {
            var operaciones = db.Operaciones.Include(o => o.Aviones).Include(o => o.Tecnicos).Include(o => o.TipoOperacion);
            return View(operaciones.ToList());
        }

        // GET: Operaciones/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Operaciones operaciones = db.Operaciones.Find(id);
            if (operaciones == null)
            {
                return HttpNotFound();
            }
            return View(operaciones);
        }

        // GET: Operaciones/Create
        public ActionResult Create()
        {
            ViewBag.AvionID = new SelectList(db.Aviones, "ID", "NumeroSerie");
            ViewBag.TecnicoID = new SelectList(db.Tecnicos, "ID", "Nombre");
            ViewBag.TipoID = new SelectList(db.TipoOperacion, "ID", "Tipo");
            return View();
        }

        // POST: Operaciones/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,TipoID,Fecha,DetallesTecnicos,AvionID,TecnicoID")] Operaciones operaciones)
        {
            if (ModelState.IsValid)
            {
                db.Operaciones.Add(operaciones);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.AvionID = new SelectList(db.Aviones, "ID", "NumeroSerie", operaciones.AvionID);
            ViewBag.TecnicoID = new SelectList(db.Tecnicos, "ID", "Nombre", operaciones.TecnicoID);
            ViewBag.TipoID = new SelectList(db.TipoOperacion, "ID", "Tipo", operaciones.TipoID);
            return View(operaciones);
        }

        // GET: Operaciones/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Operaciones operaciones = db.Operaciones.Find(id);
            if (operaciones == null)
            {
                return HttpNotFound();
            }
            ViewBag.AvionID = new SelectList(db.Aviones, "ID", "NumeroSerie", operaciones.AvionID);
            ViewBag.TecnicoID = new SelectList(db.Tecnicos, "ID", "Nombre", operaciones.TecnicoID);
            ViewBag.TipoID = new SelectList(db.TipoOperacion, "ID", "Tipo", operaciones.TipoID);
            return View(operaciones);
        }

        // POST: Operaciones/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,TipoID,Fecha,DetallesTecnicos,AvionID,TecnicoID")] Operaciones operaciones)
        {
            if (ModelState.IsValid)
            {
                db.Entry(operaciones).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.AvionID = new SelectList(db.Aviones, "ID", "NumeroSerie", operaciones.AvionID);
            ViewBag.TecnicoID = new SelectList(db.Tecnicos, "ID", "Nombre", operaciones.TecnicoID);
            ViewBag.TipoID = new SelectList(db.TipoOperacion, "ID", "Tipo", operaciones.TipoID);
            return View(operaciones);
        }

        // GET: Operaciones/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Operaciones operaciones = db.Operaciones.Find(id);
            if (operaciones == null)
            {
                return HttpNotFound();
            }
            return View(operaciones);
        }

        // POST: Operaciones/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Operaciones operaciones = db.Operaciones.Find(id);
            db.Operaciones.Remove(operaciones);
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

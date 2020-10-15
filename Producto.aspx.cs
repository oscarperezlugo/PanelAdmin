using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PanelAdmin
{
    public partial class Producto : System.Web.UI.Page
    {
        string FOTO;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Byte[] Archivo = null;
            string nombreArchivo = string.Empty;
            string extensionArchivo = string.Empty;
            if (FileUpload1.HasFile == true)
            {
                using (BinaryReader reader = new
                BinaryReader(FileUpload1.PostedFile.InputStream))
                {
                    Archivo = reader.ReadBytes(FileUpload1.PostedFile.ContentLength);
                    FOTO = Convert.ToBase64String(Archivo);
                }
                nombreArchivo = Path.GetFileNameWithoutExtension(FileUpload1.FileName);
                extensionArchivo = Path.GetExtension(FileUpload1.FileName);
            }
            if (Nombre.Value !=null)
            {

                using (SqlConnection openCon = new SqlConnection("workstation id=PaladarMobile.mssql.somee.com;packet size=4096;user id=paladarmobile_SQLLogin_1;pwd=evkj2c9yj5;data source=PaladarMobile.mssql.somee.com;persist security info=False;initial catalog=PaladarMobile"))
                {
                    string saveStaff = "INSERT into Producto (Producto, Precio, iDProducto, Foto, PrecioD, Categoria, Cantidad, Impuesto, Descuento, Tag, inCart) VALUES (@Producto, @Precio, @iDProducto, @Foto, @PrecioD, @Categoria, @Cantidad, @Impuesto, @Descuento, @Tag, @inCart)";

                    using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                    {
                        querySaveStaff.Connection = openCon;
                        querySaveStaff.Parameters.Add("@Producto", SqlDbType.VarChar).Value = Nombre.Value.ToString();
                        querySaveStaff.Parameters.Add("@Precio", SqlDbType.Money).Value = Double.Parse(Precio.Value) * 450;
                        querySaveStaff.Parameters.Add("@iDProducto", SqlDbType.UniqueIdentifier).Value = System.Guid.NewGuid();
                        querySaveStaff.Parameters.Add("@Foto", SqlDbType.Image).Value = Archivo;
                        querySaveStaff.Parameters.Add("@PrecioD", SqlDbType.Money).Value = Precio.Value;
                        querySaveStaff.Parameters.Add("@Categoria", SqlDbType.VarChar).Value = DropDownList1.SelectedValue;
                        querySaveStaff.Parameters.Add("@Cantidad", SqlDbType.Int).Value = Int16.Parse(Cantidad.Value);
                        querySaveStaff.Parameters.Add("@Impuesto", SqlDbType.VarChar).Value = DropDownList2.SelectedValue;
                        querySaveStaff.Parameters.Add("@Descuento", SqlDbType.VarChar).Value = "0";
                        querySaveStaff.Parameters.Add("@Tag", SqlDbType.VarChar).Value = Nombre.Value.Replace(" ", string.Empty).ToLower().ToString();
                        querySaveStaff.Parameters.Add("@inCart", SqlDbType.VarChar).Value = "0";
                        try
                        {
                            openCon.Open();
                            querySaveStaff.ExecuteNonQuery();
                            openCon.Close();
                            Response.Write("<script>alert('PRODUCTO CREADO')</script>");
                        }
                        catch (SqlException ex)
                        {
                            Response.Write("Error" + ex);
                        }
                    }
                }

            }
            else
            {
                Response.Write("<script>alert('DATOS INCOMPLETOS')</script>");
            }

        }
    }
}
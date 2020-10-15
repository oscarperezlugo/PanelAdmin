using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PanelAdmin
{
    public partial class ClienteEdicion : System.Web.UI.Page
    {
        string NOMBRED;
        string APELLIDOD;
        string CORREOD;
        string TELEFONOD;
        string DIRECCIOND;
        string FECHAD;
        string IDD;
        protected void Page_Load(object sender, EventArgs e)
        {
            string nombreC = Request.Cookies["nombreC"].Value;
            TagNombre.InnerText = nombreC;

            string apellidoC = Request.Cookies["apellidoC"].Value;
            TagApellido.InnerText = apellidoC;

            string correoC = Request.Cookies["correoC"].Value;
            TagCorreo.InnerText = correoC;

            string telefonoC = Request.Cookies["telefonoC"].Value;
            TagTelefono.InnerText = telefonoC;

            string direccionC = Request.Cookies["direccionC"].Value;
            TagDireccion.InnerText = direccionC;

            string fechaC = Request.Cookies["fechaC"].Value;
            string idC = Request.Cookies["idC"].Value;
            FECHAD = fechaC;
            IDD = idC;
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (Nombre.Value != "")
            {
                NOMBRED = Nombre.Value;
                APELLIDOD = TagApellido.InnerText;
                CORREOD = TagCorreo.InnerText;
                TELEFONOD = TagTelefono.InnerText;
                DIRECCIOND = TagDireccion.InnerText;

            }
            else
            {
                if (Apellido.Value != "")
                {
                    APELLIDOD = Apellido.Value;
                    NOMBRED = TagNombre.InnerText;
                    CORREOD = TagCorreo.InnerText;
                    TELEFONOD = TagTelefono.InnerText;
                    DIRECCIOND = TagDireccion.InnerText;
                }
                else
                {
                    if (Correo.Value != "")
                    {
                        CORREOD = Correo.Value;
                        NOMBRED = TagNombre.InnerText;
                        APELLIDOD = TagApellido.InnerText;
                        TELEFONOD = TagTelefono.InnerText;
                        DIRECCIOND = TagDireccion.InnerText;

                    }
                    else
                    {
                        if (Telefono.Value != "")
                        {
                            TELEFONOD = Telefono.Value;
                            NOMBRED = TagNombre.InnerText;
                            APELLIDOD = TagApellido.InnerText;
                            CORREOD = TagCorreo.InnerText;
                            DIRECCIOND = TagDireccion.InnerText;
                        }
                        else
                        {
                            if (Dirección.Value != "")
                            {
                                DIRECCIOND = Dirección.Value;
                                NOMBRED = TagNombre.InnerText;
                                APELLIDOD = TagApellido.InnerText;
                                CORREOD = TagCorreo.InnerText;
                                TELEFONOD = TagTelefono.InnerText;
                            }
                        }
                    }

                }

            }


            using (SqlConnection openCon = new SqlConnection("workstation id=PaladarMobile.mssql.somee.com;packet size=4096;user id=paladarmobile_SQLLogin_1;pwd=evkj2c9yj5;data source=PaladarMobile.mssql.somee.com;persist security info=False;initial catalog=PaladarMobile"))
            {
                string saveStaff = "UPDATE Clientes SET Nombre = @Nombre, Apellido = @Apellido, Correo = @Correo, Telefono = @Telefono, Direccion = @Direccion WHERE iDCliente = @iDCliente";

                using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                {
                    
                    querySaveStaff.Connection = openCon;
                    querySaveStaff.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = NOMBRED;
                    querySaveStaff.Parameters.Add("@Apellido", SqlDbType.VarChar).Value = APELLIDOD;
                    querySaveStaff.Parameters.Add("@Correo", SqlDbType.VarChar).Value = CORREOD;
                    querySaveStaff.Parameters.Add("@Telefono", SqlDbType.VarChar).Value = TELEFONOD;
                    querySaveStaff.Parameters.Add("@Direccion", SqlDbType.VarChar).Value = DIRECCIOND;
                    querySaveStaff.Parameters.Add("@FechaRegistro", SqlDbType.DateTime).Value = DateTime.Parse(FECHAD);
                    querySaveStaff.Parameters.Add("@iDCliente", SqlDbType.UniqueIdentifier).Value = Guid.Parse(IDD);
                    try
                    {
                        openCon.Open();
                        querySaveStaff.ExecuteNonQuery();
                        openCon.Close();
                        Response.Write("<script>alert('CLIENTE ACTUALIZADO')</script>");
                        Response.Redirect("Lista.aspx");
                    }
                    catch (SqlException ex)
                    {
                        Response.Write("Error" + ex);
                    }
                }




            }
        }
    }
}
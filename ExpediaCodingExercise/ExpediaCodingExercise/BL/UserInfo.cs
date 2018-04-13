using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserInfo
/// Purpose : Present user information object in JSON
/// Owner : Marleen Haddad
/// </summary>
public class UserInfo
{
    public Persona persona { get; set; }
    public string userId { get; set; }
}
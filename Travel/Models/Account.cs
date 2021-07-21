using System;
using System.Collections.Generic;

namespace Travel.Models
{
  public class Account : Profile
  {
    public string Id { get; set; }
    public string Email { get; set; }
    public DateTime Created_Time { get; set; }
    public DateTime Updated_Time { get; set; }
  }
}
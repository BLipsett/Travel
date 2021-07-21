using System;
using Travel.Interfaces;

namespace Travel.Models
{
  public class Trip : IVacation<int>
  {
    public int Id { get; set; }
    public string Name { get; set; }

    public string creatorId { get; set; }
    public DateTime Created_Time { get; set; }
    public DateTime Updated_Time { get; set; }
    public int Trip_Length { get; set; }
    public int Daily_Cost { get; set; }
    public int Total_Cost { get; set; }

    public Account Creator { get; set; }
  }
}
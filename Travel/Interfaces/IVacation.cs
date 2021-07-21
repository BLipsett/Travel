using System;

namespace Travel.Interfaces
{
  public interface IVacation<T>
  {
    T Id { get; set; }
    DateTime Created_Time { get; set; }
    DateTime Updated_Time { get; set; }
    int Trip_Length { get; set; }
    int Daily_Cost { get; set; }
    int Total_Cost { get; set; }
  }
}
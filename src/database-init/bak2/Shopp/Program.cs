using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shopp
{
	public class User
	{
		public int Id { get; set; }

		public string UserName { get; set; }
		public string Password { get; set; }

		public string Email { get; set; }

		public string Address { get; set; }

		public string Contact { get; set; }
	}

	public class Order
	{
		public int Id { get; set; }
		public decimal Total { get; set; }

		public int UserId { get; set; }
		public User User { get; set; }

		public string PaymentStatus { get; set; }
		public string PaymentChannel { get; set; }
	}

	public class OrderDetail
	{
		public int Id { get; set; }

		public int ProductId { get; set; }
		public Product Product { get; set; }


		public int Quantity { get; set; }
		public decimal PricePerUnit { get; set; }

		public decimal Subtotal { get; set; }


		public int OrderId { get; set; }
		public Order Order { get; set; }
	}

	public class Product
	{
		public int Id { get; set; }
		public string Name { get; set; }
		public decimal Price { get; set; }
		public string Category { get; set; }

		public string ImageUrl { get; set; }

		public int VendorId { get; set; }
		public Vendor Vendor { get; set; }
	}

	public class Vendor
	{
		public int Id { get; set; }
		public string UserName { get; set; }

		public string Email { get; set; }
		public string Address { get; set; }
		public string Contact { get; set; }

		public string ShopName { get; set; }
	}


	public class ShoppDbContext : DbContext
	{

		public DbSet<User> Users { get; set; }
		public DbSet<Order> Orders { get; set; }
		public DbSet<OrderDetail> OrderDetails { get; set; }
		public DbSet<Product> Products { get; set; }
		public DbSet<Vendor> Vendors { get; set; }
	}

	class Program
	{
		static void Main(string[] args)
		{
		}
	}
}
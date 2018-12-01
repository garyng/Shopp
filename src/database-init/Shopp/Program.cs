using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Bogus;

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

		public ICollection<OrderDetail> OrderDetails { get; set; } = new HashSet<OrderDetail>();
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
		public string Password { get; set; }

		public string Email { get; set; }
		public string Address { get; set; }
		public string Contact { get; set; }

		public string ShopName { get; set; }
	}

	public class Admin
	{
		public int Id { get; set; }

		public string UserName { get; set; }
		public string Password { get; set; }

		public string Email { get; set; }

		public string Address { get; set; }

		public string Contact { get; set; }
	}

	public class ShoppDbContext : DbContext
	{
		public DbSet<User> Users { get; set; }
		public DbSet<Admin> Admins { get; set; }
		public DbSet<Order> Orders { get; set; }
		public DbSet<OrderDetail> OrderDetails { get; set; }
		public DbSet<Product> Products { get; set; }
		public DbSet<Vendor> Vendors { get; set; }
	}

	class Program
	{
		static void Main(string[] args)
		{
			var context = new ShoppDbContext();
			context.Database.Log = Console.WriteLine;

			Console.WriteLine(
				$"Checking and creating database using the connection '{context.Database.Connection.ConnectionString}'");
			context.Database.Delete();
			context.Database.Create();

			Console.WriteLine("Creating users...");
			var users = new Faker<User>()
				.Rules((f, u) =>
				{
					u.Id = f.IndexFaker;
					u.Address = f.Address.FullAddress();
					u.Contact = f.Phone.PhoneNumber();
					u.Email = f.Internet.Email();
					u.Password = "user";
					u.UserName = $"user{u.Id}";
				})
				.Generate(10);
			context.Users.AddRange(users);
			context.SaveChanges();

			Console.WriteLine("Creating admins...");
			var admins = new Faker<Admin>()
				.Rules((f, u) =>
				{
					u.Id = f.IndexFaker;
					u.Address = f.Address.FullAddress();
					u.Contact = f.Phone.PhoneNumber();
					u.Email = f.Internet.Email();
					u.Password = "admin";
					u.UserName = $"admin{u.Id}";
				})
				.Generate(10);
			context.Admins.AddRange(admins);
			context.SaveChanges();

			Console.WriteLine("Creating orders...");
			var orders = new Faker<Order>()
				.Rules((f, o) =>
				{
					o.UserId = f.PickRandom(users).Id;
					o.PaymentChannel = f.PickRandom(new[] {"PayPal", "Debit/Credit Card", "Bank Transfer"});
					o.PaymentStatus = f.PickRandom(new[] {"Pending", "Paid"});
					// o.Total = f.Random.Decimal(10, 100);
				})
				.Generate(20);
			context.Orders.AddRange(orders);
			context.SaveChanges();


			Console.WriteLine("Creating vendors...");
			var vendors = new Faker<Vendor>()
				.Rules((f, v) =>
				{
					v.Id = f.IndexFaker;
					v.Address = f.Address.FullAddress();
					v.Contact = f.Phone.PhoneNumber();
					v.Email = f.Internet.Email();
					v.Password = "vendor";
					v.UserName = $"vendor{v.Id}";
					v.ShopName = f.Company.CompanyName();
				})
				.Generate(10);
			context.Vendors.AddRange(vendors);
			context.SaveChanges();

			Console.WriteLine("Creating products...");
			var products = new Faker<Product>()
				.Rules((f, p) =>
				{
					p.Price = f.Random.Decimal(10, 200);
					p.Category = f.Commerce.Categories(1)[0];
					p.ImageUrl = "https://source.unsplash.com/300x300/?shoe";
					p.Name = f.Commerce.ProductName();
					p.Vendor = f.PickRandom(vendors);
				})
				.Generate(50);
			context.Products.AddRange(products);
			context.SaveChanges();

			Console.WriteLine("Creating order details...");
			var orderDetails = new Faker<OrderDetail>()
				.Rules((f, od) =>
				{
					Order order = f.PickRandom(orders);

					od.OrderId = order.Id;

					Product p = f.PickRandom(products);
					od.PricePerUnit = p.Price;
					od.ProductId = p.Id;

					od.Quantity = f.Random.Int(1, 20);
					od.Subtotal = od.PricePerUnit * od.Quantity;
				})
				.Generate(100);
			context.OrderDetails.AddRange(orderDetails);
			context.SaveChanges();

			Console.WriteLine("Updating order's total...");
			var updatedOrders = context.Orders.ToList();
			updatedOrders.ForEach(o => o.Total = o.OrderDetails.Sum(od => od.Subtotal));
			context.SaveChanges();

			Console.WriteLine("Done.");
			Console.ReadLine();
		}
	}
}
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BeautyHome.Context
{
    using System;
    using System.Collections.Generic;
    
    public partial class order
    {
        public long order_id { get; set; }
        public long product_id { get; set; }
        public Nullable<long> user_id { get; set; }
        public string full_name { get; set; }
        public string address { get; set; }
        public string phone { get; set; }
        public string mail { get; set; }
        public string product_name { get; set; }
        public Nullable<int> amount { get; set; }
        public Nullable<double> price { get; set; }
        public Nullable<System.DateTime> date_order { get; set; }
        public Nullable<System.DateTime> datereceived { get; set; }
        public Nullable<int> status { get; set; }
    
        public virtual user user { get; set; }
    }
}
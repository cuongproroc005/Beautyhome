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
    
    public partial class image_product
    {
        public long product_id { get; set; }
        public string url_Image1 { get; set; }
        public string url_Image2 { get; set; }
        public string url_Image3 { get; set; }
    
        public virtual product product { get; set; }
    }
}

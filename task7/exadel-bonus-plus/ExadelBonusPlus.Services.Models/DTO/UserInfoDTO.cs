﻿using System;
using System.Collections.Generic;

namespace ExadelBonusPlus.Services.Models
{
    public class UserInfoDTO
    {
        public Guid Id { get; set; }
        public string Email { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string City { get; set; }
        public string PhoneNumber { get; set; }
        public bool IsActive { get; set; }
        public IList<string> Roles { get; set; }
    }
}

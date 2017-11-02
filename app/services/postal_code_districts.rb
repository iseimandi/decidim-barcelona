# coding: utf-8
module PostalCodeDistricts
  DATA = {
    "1" => %w{08001 08002 08003 08005 08007 08010 08018 08038 08039},
    "2" => %w{08001 08002 08007 08008 08009 08010 08011 08013 08015 08018 08025 08029 08036 08037},
    "6" => %w{08006 08008 08012 08023 08024 08025 08032 08035 08037},
    "7" => %w{08023 08024 08025 08031 08032 08035 08041 08042},
    "4" => %w{08014 08017 08028 08029 08034},
    "8" => %w{08016 08027 08031 08033 08035 08042},
    "9" => %w{08020 08026 08027 08030 08033 08038 08041},
    "10" => %w{08003 08005 08013 08018 08019 08020 08025 08026 08027 08038 08041},
    "3" => %w{08004 08009 08014 08020 08028 08029 08038 08039 08040},
    "5" => %w{08006 08012 08017 08021 08022 08023 08028 08034 08035}
  }

  def self.valid?(postal_code, district_name)
    DATA[district_name]&.include?(postal_code)
  end
end

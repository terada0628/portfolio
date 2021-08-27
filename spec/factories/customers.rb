FactoryBot.define do
  factory :customer do
    email                 { 'test@gmail.com' }
    password              { '7777777' }
    password_confirmation { '7777777' }
    family_name           { '大野' }
    first_name            { '智' }
    family_name_kana      { 'オオノ' }
    first_name_kana       { 'サトシ' }
    sex                   { '男性' }
    postal_code           { '0002222' }
    address               { '東京都練馬区' }
    telephone_number      { '77788889999' }
    is_deleted            { false }
  end
end

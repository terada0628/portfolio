FactoryBot.define do
  factory :contact do
    inquiry               {"商品やお店についてのお問い合わせ"}
    title                 {"8/15の19時に届いた商品について"}
    content               {"焼きおにぎりを6個注文したのだが、5個しか入ってなかった"}
    email                 {"test@gmail.com"}
    family_name           {"大野"}
    first_name            {"智"}
    family_name_kana      {"オオノ"}
    first_name_kana       {"サトシ"}
    sex                   {"男性"}
    postal_code           {"0002222"}
    address               {"東京都練馬区"}
    telephone_number      {"77788889999"}

  end
end
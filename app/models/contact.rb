class Contact < ApplicationRecord

  enum type: {"商品やお店についてのお問い合わせ": 0, "": 1}

  enum sex: {a: 0, b: 1}

end

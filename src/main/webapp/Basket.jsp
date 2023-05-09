<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
  <meta charset="utf-8">
    <title>장바구니 페이지 예제</title>
    <style>
      /* 장바구니 페이지 스타일 */
      .container {
        margin: 20px;
        border: 1px solid gray;
        padding: 20px;
      }
      .item {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 10px;
      }
      .item img {
        width: 50px;
        height: 50px;
        margin-right: 10px;
      }
      .item button {
        margin-left: 10px;
      }
      .total {
        margin-top: 20px;
        font-weight: bold;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h1>장바구니</h1>
      <div class="cart"></div>
      <div class="total">총 결제 금액: 0원</div>
      <button onclick="checkout()">결제하기</button>
    </div>
    <script>
      // 상품 데이터
      const products = [
        {
          id: 1,
          name: '상품 1',
          price: 1000,
          image: 'https://via.placeholder.com/50x50',
        },
        {
          id: 2,
          name: '상품 2',
          price: 2000,
          image: 'https://via.placeholder.com/50x50',
        },
        {
          id: 3,
          name: '상품 3',
          price: 3000,
          image: 'https://via.placeholder.com/50x50',
        },
      ];

      // 장바구니 상품 목록
      let cartItems = [];

      // 상품을 장바구니에 추가하는 함수
      function addToCart(productId) {
        const product = products.find((p) => p.id === productId);
        const cartItem = cartItems.find((c) => c.id === productId);
        if (cartItem) {
          cartItem.quantity += 1;
        } else {
          cartItems.push({ ...product, quantity: 1 });
        }
        renderCart();
      }

      // 상품의 수량을 변경하는 함수
      function changeQuantity(productId, quantity) {
        const cartItem = cartItems.find((c) => c.id === productId);
        cartItem.quantity = quantity;
        renderCart();
      }

      // 상품을 장바구니에서 삭제하는 함수
      function removeFromCart(productId) {
        cartItems = cartItems.filter((c) => c.id !== productId);
        renderCart();
      }

      // 장바구니 페이지를 렌더링하는 함수
      function renderCart() {
        const cart = document.querySelector('.cart');
        cart.innerHTML = '';
        cartItems.forEach((item) => {
          const div = document.createElement('div');
          div.className = 'item';
          div.innerHTML = `
              <img src="${item.image}" alt="${item.name}">
              <span>${item.name} - ${item.price}원</span>
              <input type="number" value="${item.quantity}" min="1" max="10" onchange="changeQuantity(${item.id}, this.value)">
              <button onclick="removeFromCart(${item.id})">삭제</button>
            `;
            cart.appendChild(div);
          });
          const total = document.querySelector('.total');
          const totalPrice = cartItems.reduce((acc, item) => acc + item.price * item.quantity, 0);
          total.textContent = `총 결제 금액: ${totalPrice}원`;
        }

        // 결제하기 버튼을 클릭했을 때 호출되는 함수
        function checkout() {
          alert(`결제 금액: ${cartItems.reduce((acc, item) => acc + item.price * item.quantity, 0)}원`);
          cartItems = [];
          renderCart();
        }

        // 초기 페이지 로딩 시 상품 목록을 렌더링
        renderCart();
      </script>
    </body>
  </html>
          
         

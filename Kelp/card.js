    document.addEventListener('DOMContentLoaded', function () {
      let rateElements = document.querySelectorAll('.rate span');
      
      rateElements.forEach(function (element, index) {
        element.addEventListener('click', function () {
          var clickedValue = element.textContent;
          
          if (clickedValue === '⭐') {
            element.textContent = '❌';
            } else {
                element.textContent = '⭐';
                }

          
          for (var i = index + 1; i < rateElements.length; i++) {
            if (clickedValue === '⭐')
              rateElements[i].textContent = rateElements[i].textContent.replace('⭐', '❌');
          }
        });
      });
    });
  
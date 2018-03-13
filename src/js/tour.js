// Define the tour!
var tour = {
    id: "hello-hopscotch",
    steps: [
      {
        title: "My Header",
        content: "This is the header of my page.",
        target: "heading",
        placement: "bottom"
      },
//      {
//        title: "My content",
//        content: "Here is where I put my content.",
//        target: document.querySelector("#content p"),
//        placement: "bottom"
//      }
//      ,
      {
        title: "Footer",
        content: "Here is where I put my footer.",
        target: "footer",
        placement: "top"
      }
    ]
  };

  // Start the tour!
  hopscotch.startTour(tour);
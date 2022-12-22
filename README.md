![](https://img.shields.io/badge/Microverse-blueviolet)

# ezPay

> This application uses Rails CRUD capabilities to allow users to categorize and add their transactions in a web UI. This project uses RoR as its we framework, Tailwind CSS for its styling, Devise for authentication and many other technologies.

<img src="https://user-images.githubusercontent.com/97900045/195956191-9bc19188-41ee-4137-bcba-45f2fa4b756f.jpg" alt="drawing" width="400"/>


## Built With

- RoR
- PostgreSQL
- Tailwind CSS
- Devise
- CanCanCan
- Bullet

## Live Demo

- [Live Demo Link](https://ezpay-production.up.railway.app/)
- [Video Demo](https://www.loom.com/share/72affb18229146c1ae25d8e3a8bfd8b0)

## Getting Started


To get a local copy up and running follow these simple example steps.

### Prerequisites

- Ruby 3.1.2 or higher
- Rails 7.0.4 
- PostgreSQL
- NPM
- Updated Web browser
### Setup

    git clone https://github.com/indigodavid/ezpay.git
    cd ezpay/

### Install

    bundle install
    npm install
### Usage

1. You need to create a user to login into the application
2. The main screen contains the categories you have created. You can create one in this first page.
3. You can name your category to any string you may like. For the icon, the app loads it from [Fontawesome](https://fontawesome.com/search?o=r&m=free&s=solid&f=classic), you only need to insert the lowercase string with the name of the icon in the free solid library. Examples of valid icons are `plane`, `gamepad`, `hamburger`, etc.
4. Once you have a category you add payments. To do this you can clic on the category and there you may add a new payment.
5. For the payments it is required a name and an amount. If you have more categories you may add as many as you want. Every payment must have at least one category.
6. You can see your payments according to your categories. Enjoy!!
### Run tests

    rspec --format documentation
### Deployment

[Railway](https://ezpay-production.up.railway.app/)
[Heroku (Not available)](https://rocky-harbor-76582.herokuapp.com)
## Authors

👤 **David Vera**

- GitHub: [![GitHub Badge](https://img.shields.io/badge/-indigodavid-white?logo=GitHub&logoColor=181717&style=plastic)](https://github.com/indigodavid)
- Twitter: [![Twitter Badge](https://img.shields.io/badge/-indigo1987-white?logo=Twitter&logoColor=1DA1F2&style=plastic)](https://twitter.com/indigo1987)
- LinkedIn: [![LinkedIn Badge](https://img.shields.io/badge/-davidveracastillo-white?logo=LinkedIn&logoColor=1DA1F2&style=plastic)](https://linkedin.com/in/davidveracastillo/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Based on the [design](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding?tracking_source=&&&) by [Gregoire Vella](http://linkedin.com/company/minimalapps)
- My supportive family 😊
- Microverse
- Hat tip to anyone whose code was used
- Fontawesome
- Flowbite

## 📝 License

This project is [MIT](./LICENSE) licensed.

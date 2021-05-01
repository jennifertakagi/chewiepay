<!-- Inspired by https://github.com/jennifertakagi/chewiepay -->

<!-- PROJECT SHIELDS -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<p align="center">
  <h3 align="center">Chewiepay</h3>

  <p align="center">
    An API to manage a payment system!
    <br />
    <a href="https://github.com/jennifertakagi/chewiepay"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="LINK_DEMO">View Demo</a>
    ·
    <a href="https://github.com/jennifertakagi/chewiepay/issues">Report Bug</a>
    ·
    <a href="https://github.com/jennifertakagi/chewiepay/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

An API to manage a payment system!

Features:
* Deposit money on an account
* Withdrawal money of an account
* Transfer money between accounts



### Built With

* [Elixir](https://elixir-lang.org/)
* [Phoenix](https://www.phoenixframework.org/)
* [Ecto SQL](https://github.com/elixir-ecto/ecto_sql)
* [Postgrex](https://github.com/elixir-ecto/postgrex)
* [Credo](https://github.com/rrrene/credo)
* [Bcrypt](https://github.com/riverrun/bcrypt_elixir)
* [Excoveralls](https://github.com/parroty/excoveralls)

<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

* elixir
  ```sh
  npm install npm@latest -g
  ```



### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/jennifertakagi/chewiepay.git
   ```
2. Install dependencies
  ```sh
  mix deps.get
  ```
3. Create a docker image of Postgres following the command
  ```sh
  docker run --name chewieapi_dev -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres 
  ```
4. Run database migrations
  ```sh
  mix ecto.setup
  ```
5. Run the following command in order to start the application in a development environment:
  ```sh
  mix phx.server
  ```



<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/jennifertakagi/chewiepay/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Jennifer Takagi - [@jennitakagi](https://twitter.com/jennitakagi)



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/jennifertakagi/chewiepay.svg?style=for-the-badge
[contributors-url]: https://github.com/jennifertakagi/chewiepay/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/jennifertakagi/chewiepay.svg?style=for-the-badge
[forks-url]: https://github.com/jennifertakagi/chewiepay/network/members
[stars-shield]: https://img.shields.io/github/stars/jennifertakagi/chewiepay.svg?style=for-the-badge
[stars-url]: https://github.com/jennifertakagi/chewiepay/stargazers
[issues-shield]: https://img.shields.io/github/issues/jennifertakagi/chewiepay.svg?style=for-the-badge
[issues-url]: https://github.com/jennifertakagi/chewiepay/issues
[license-shield]: https://img.shields.io/github/license/jennifertakagi/chewiepay.svg?style=for-the-badge
[license-url]: https://github.com/jennifertakagi/chewiepay/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/jennifertakagi

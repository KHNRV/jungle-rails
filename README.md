<br />
<p align="center">
  <a href="https://github.com/KHNRV/jungle-rails">
    <img src="docs/images/logo.png" alt="Logo" width="200">
  </a>

  <h3 align="center">Jungle</h3>

  <p align="center">
    A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.
  </p>
</p>

<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
        <li><a href="#implementedeatures">Implemented Features</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting  Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>


## About The Project

[![Product Name Screen Shot][product-screenshot]](./docs/images/home.png)


### Implemented Features


### Built With

* [Ruby 2.6.6](https://www.ruby-lang.org/en/news/2020/03/31/ruby-2-6-6-released/)
* [Rails 4.2](http://guides.rubyonrails.org/v4.2/)
* [PostgreSQL 9.x](https://www.postgresql.org/)
* [Stripe](https://stripe.com/)



## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

You should have Rails 4.2 and Ruby 2.6.6 installed and loaded on your machine

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/KHNRV/jungle-rails.git
   ```
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

### Stipe Testing
Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Contact

Kevin Nicolas - bonjour@kevinnicolas.com

Project Link: [https://github.com/KHNRV/jungle-rails](https://github.com/KHNRV/jungle-rails)



[contributors-shield]: https://img.shields.io/github/contributors/KHNRV/repo.svg?style=for-the-badge
[contributors-url]: https://github.com/KHNRV/repo/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/KHNRV/repo.svg?style=for-the-badge
[forks-url]: https://github.com/KHNRV/repo/network/members
[stars-shield]: https://img.shields.io/github/stars/KHNRV/repo.svg?style=for-the-badge
[stars-url]: https://github.com/KHNRV/repo/stargazers
[issues-shield]: https://img.shields.io/github/issues/KHNRV/repo.svg?style=for-the-badge
[issues-url]: https://github.com/KHNRV/repo/issues
[license-shield]: https://img.shields.io/github/license/KHNRV/repo.svg?style=for-the-badge
[license-url]: https://github.com/KHNRV/repo/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/KHNRV
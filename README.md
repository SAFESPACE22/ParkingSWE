# Park Findr

Park Findr is the premiere parking assistance application for the University of Oklahoma community. It simplifies the process of finding a parking spot by providing real-time updates on available parking spaces across campus garages.

## Table of Contents

- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Running the tests](#running-the-tests)
- [Deployment](#deployment)
- [Built With](#built-with)
- [Branching Policy](#branching-policy)
- [Contributing](#contributing)
- [Versioning](#versioning)
- [Authors](#authors)
- [License](#license)
- [Acknowledgments](#acknowledgments)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

What things you need to install the software and how to install them:

```bash
Node.js
Firebase Account
Google Maps API Key
```
### Deployment
1. Clone the repository to your local machine:
```bash
git clone https://github.com/yourusername/parkfindr.git
```

2. Navigate to the project directory:
```bash
cd project
```

3. Install dependencies:
```bash
npm install
```

4. Configure settings:
```bash
cp config.example.js config.js
```

5. Start the application:
```bash
npm run start
```

6. Access the application in your web browser by opening up the localhost

### Built With

- **Frontend**:
  - [React](https://reactjs.org/) - A JavaScript library for building user interfaces
  - [Bootstrap](https://getbootstrap.com/) - A front-end framework for developing responsive, mobile-first projects

- **Backend**:
  - [Node.js](https://nodejs.org/) - A JavaScript runtime built on Chrome's V8 JavaScript engine
  - [Express](https://expressjs.com/) - A minimal and flexible Node.js web application framework

- **Database**:
  - [Firebase](https://firebase.google.com/) - A platform developed by Google for creating mobile and web applications

- **APIs**:
  - [Google Maps API](https://developers.google.com/maps) - For displaying maps and handling geolocation


### Branching Policy
#### Main Branches

- `master`: The `master` branch contains stable, production-ready code. It should always reflect the latest release.
- `develop`: The `develop` branch is the main integration branch where feature branches are merged. It may contain work in progress and should be tested thoroughly before merging into `master`.

#### Feature Branches

- Feature branches should be created off the `develop` branch.
- Use descriptive names for feature branches, e.g., `feature/new-feature` or `feature/issue-123`.
- Once a feature is complete, submit a pull request to merge it into `develop`.

#### Release Branches

- When preparing for a release, create a release branch from `develop`.
- Use the naming convention `release/x.x.x`, where `x.x.x` is the version number.
- Perform final testing and bug fixes on the release branch.
- Merge the release branch into both `master` and `develop` once it's ready.

#### Pull Requests

- All changes should be made via pull requests.
- Pull requests must be reviewed by at least one other team member before merging.
- Squash and merge feature branches to maintain a clean commit history.

### Contributing

We welcome contributions to Park Findr! If you're looking to help, please first review our simple guidelines:

1. **Discuss your idea**: File an issue to discuss the proposed change and ensure it aligns with project goals.
2. **Fork the repo**: Make a copy of this project on your own account to start working on your changes.
3. **Create a branch**: From your fork, create a branch for your contribution (`feature/your-feature-name`).
4. **Make your changes**: Write your code following the coding standards and commit messages guidelines.
5. **Write tests**: Ensure your changes do not break the existing functionality.
6. **Submit a Pull Request**: Push your changes to your fork and open a pull request against the `develop` branch for review.

Before your submission, please ensure:

- The application builds and runs without any issues.
- You've added any necessary documentation for your changes.
- You’ve followed code style and quality standards.


### Versioning
Visual Studio Code (Version: 1.87.2)
XCode (Version: 15.3)
MacOS (Sonoma: 14.3.1)
Windows 11 (Build 22631.3296)


### Authors
Park Findr is a collaborative project by seven software engineers and database administrators. We are passionate about technology, and we hope to share our passion with you through this project. If you have any questions, please feel free to reach out to us on LinkedIn.
- [Aidan] | Software Engineer
- [An](https://www.linkedin.com/in/annguyen123/) | Database Administrator
- [Dien](https://www.linkedin.com/in/dien-mai-0067ba24b/) | Database Administrator
- [Hoc](https://www.linkedin.com/in/hoc-nguyen/) | Software Engineer
- [Melissa](https://www.linkedin.com/in/melissa-ng-724736284) | Project Manager
- [Tyler](https://www.linkedin.com/in/tyler-vuong/) | Software Engineer
- [Vincent](https://www.linkedin.com/in/vincenttran-swe/) | Software Engineer

### License
-This project is not licensed. You are allowed to use, copy, modify, and distribute the code freely.


### Acknowledgments
- Hat tip to the OU community for their constant feedback.
- Thanks to all the contributors who dedicate time to improve Park Findr.
- Special thanks to project mentors and advisors.


# GitHub and GitLab pages


Comparisons of GitHub and GitLab pages.

<!--more-->

## Source

- [Scivision](https://www.scivision.dev/gitlab-pages-vs-github-pages/)
- [A recent reddit post](https://www.reddit.com/r/github/comments/jqf3eu/question_gitlab_pages_vs_github_pages/)
- [Alex Haras](https://alexharas.com/posts/github-to-gitlab/)

## GitHub pages
- Grabs webpages from the root (`/`) or `docs` folder. You could choose which git branch to hold the pages.
- [Built-in](https://docs.github.com/en/free-pro-team@latest/github/working-with-github-pages/creating-a-github-pages-site) Jekyll static site generator requiring little setup from your side.
- You could use other static site generators (e.g. Hugo, Hexo) by setting up [GitHub actions](https://github.com/peaceiris/actions-gh-pages).
- The connection to the built website is [pretty fast](https://www.jeremymorgan.com/blog/programming/how-fast-are-github-pages/).

## GitLab pages

[Getting started](https://docs.gitlab.com/ee/user/project/pages/#getting-started)

- You must setup a gitlab CI job, where pages should be published in the `public` folder and uploaded as an artifact. For example,
  ```yaml
  image: ruby:2.7
  pages:
    script:
    - gem install bundler
    - bundle install
    - bundle exec jekyll build -d public
    artifacts:
      paths:
      - public
  ```
- Therefore, GitLab pages take more steps to set up but are more flexible.
- Larger repository size limit (10 GB in GitLab vs 1GB in GitHub)
- More [custom domains](https://docs.gitlab.com/ee/user/project/pages/custom_domains_ssl_tls_certification/)
- You can set [access levels](https://docs.gitlab.com/ee/user/project/pages/pages_access_control.html), which require log in and your approval to visit.

## Conclusion

Right I use GitHub pages for my blog for faster connection speed, but leave a mirror hosted by GitLab pages in case GitHub is down.


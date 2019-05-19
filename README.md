# PHPQA for WordPress

This repository is based on Jakzal's [Static Analysis Tools for PHP](https://hub.docker.com/r/jakzal/phpqa). Adds WordPress, WordPress-Core, WordPress-Docs and WordPress-Extra PHPCS ruleset into original package.

## Build It
```
docker build -t phpqawp .
```

## Add as Alias

Add following line to ~/.bash_profile file and run source ~/.bash_profile to reload settings.

```
alias phpqawp='docker run --init -it --rm -v $(pwd):/project -v $(pwd)/tmp-phpqa:/tmp -w /project phpqawp:latest'
```

## Use it

```
phpqawp phpcs --standard=WordPress <filename>
```


```
phpqawp phpcs --standard=WordPress-Core <filename>
```

```
phpqawp phpcs --standard=WordPress-Docs <filename>
```


```
phpqawp phpcs --standard=WordPress-Extra <filename>
```

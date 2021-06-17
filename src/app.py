import web

urls = (
    '/(.*)', 'HelloWorld'
)
app = web.application(urls, globals())


class HelloWorld(object):
    def GET(self, name):
        if not name:
            name = 'World'
        return "Hello %s !" % name


if __name__ == "__main__":
    app.run()

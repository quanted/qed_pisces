#Class for pisces_db routing
class PiscesRouter(object):
    """
    A router to control all database operations on models in the
    pisces application.
    """

    def db_for_read(self, model, **hints):
        """
        Attempts to read hem models go to pisces_db.
        """
        if model._meta.app_label == 'pisces_app':
            return 'pisces_db'
        return None

    def db_for_write(self, model, **hints):
        """
        Attempts to write auth models go to pisces_db.
        """
        if model._meta.app_label == 'pisces_app':
            return 'pisces_db'
        return None

    def allow_relation(self, obj1, obj2, **hints):
        """
        Allow relations if a model in the pisces app is involved.
        """
        if obj1._meta.app_label == 'pisces_app' or \
                        obj2._meta.app_label == 'pisces_app':
            return True
        return None

    def allow_migrate(self, db, app_label, model_name=None, **hints):
        """
        Make sure the hem app only appears in the 'pisces_db'
        database.
        """
        if app_label == 'pisces_app':
            return db == 'pisces_db'
        return None

package p039f;

import J.g;
import android.content.res.Configuration;
import android.os.LocaleList;

/* JADX INFO: loaded from: classes.dex */
public abstract class C {
    public static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
        LocaleList locales = configuration.getLocales();
        LocaleList locales2 = configuration2.getLocales();
        if (locales.equals(locales2)) {
            return;
        }
        configuration3.setLocales(locales2);
        configuration3.locale = configuration2.locale;
    }

    public static g b(Configuration configuration) {
        return g.b(configuration.getLocales().toLanguageTags());
    }

    public static void c(g gVar) {
        LocaleList.setDefault(LocaleList.forLanguageTags(gVar.f4053a.a()));
    }

    public static void d(Configuration configuration, g gVar) {
        configuration.setLocales(LocaleList.forLanguageTags(gVar.f4053a.a()));
    }
}

package Z6;

import java.text.Format;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: Z6.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0469a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f8487a = new ConcurrentHashMap(7);

    static {
        new ConcurrentHashMap(7);
    }

    public final Format a(String str, Locale locale) {
        TimeZone timeZone = TimeZone.getDefault();
        Locale localeA = Y6.a.a(locale);
        E e8 = new E(str, timeZone, localeA);
        ConcurrentHashMap concurrentHashMap = this.f8487a;
        Format format = (Format) concurrentHashMap.get(e8);
        if (format != null) {
            return format;
        }
        C0470b c0470b = new C0470b(str, timeZone, localeA);
        Format format2 = (Format) concurrentHashMap.putIfAbsent(e8, c0470b);
        return format2 != null ? format2 : c0470b;
    }
}

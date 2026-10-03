package Z6;

import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public final class w implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Locale f8547a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f8548b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f8549c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f8550d;

    public w(TimeZone timeZone, Locale locale, int i8) {
        this.f8547a = Y6.a.a(locale);
        this.f8548b = i8;
        this.f8549c = C.d(timeZone, false, i8, locale);
        this.f8550d = C.d(timeZone, true, i8, locale);
    }

    @Override // Z6.s
    public final void a(StringBuilder sb, Calendar calendar) {
        TimeZone timeZone = calendar.getTimeZone();
        int i8 = calendar.get(16);
        Locale locale = this.f8547a;
        int i9 = this.f8548b;
        if (i8 == 0) {
            sb.append((CharSequence) C.d(timeZone, false, i9, locale));
        } else {
            sb.append((CharSequence) C.d(timeZone, true, i9, locale));
        }
    }

    @Override // Z6.s
    public final int b() {
        return Math.max(this.f8549c.length(), this.f8550d.length());
    }
}

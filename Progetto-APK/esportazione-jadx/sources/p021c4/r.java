package p021c4;

import com.google.protobuf.U2;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class r extends AbstractC0610s0 {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public long f11344I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public String f11345J;

    @Override // p021c4.AbstractC0610s0
    public final boolean n() {
        Calendar calendar = Calendar.getInstance();
        this.f11344I = TimeUnit.MINUTES.convert(calendar.get(16) + calendar.get(15), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        Locale locale2 = Locale.ENGLISH;
        this.f11345J = U2.l(language.toLowerCase(locale2), "-", locale.getCountry().toLowerCase(locale2));
        return false;
    }
}

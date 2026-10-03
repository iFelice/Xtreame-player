package Z6;

import java.util.Calendar;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: Z6.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0474f extends h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0474f f8496b = new C0474f("(Z|(?:[+-]\\d{2}))");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C0474f f8497c = new C0474f("(Z|(?:[+-]\\d{2}\\d{2}))");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C0474f f8498d = new C0474f("(Z|(?:[+-]\\d{2}(?::)\\d{2}))");

    public C0474f(String str) {
        this.f8500a = Pattern.compile(str);
    }

    @Override // Z6.h
    public final void c(Calendar calendar, String str) {
        calendar.setTimeZone(D.a(str));
    }
}

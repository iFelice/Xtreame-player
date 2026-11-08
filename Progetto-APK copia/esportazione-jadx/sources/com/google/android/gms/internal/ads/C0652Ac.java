package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ac, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0652Ac implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12007a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Thread.UncaughtExceptionHandler f12008b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0667Bc f12009c;

    public /* synthetic */ C0652Ac(C0667Bc c0667Bc, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, int i8) {
        this.f12007a = i8;
        this.f12008b = uncaughtExceptionHandler;
        this.f12009c = c0667Bc;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        int i8 = this.f12007a;
        C0667Bc c0667Bc = this.f12009c;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f12008b;
        switch (i8) {
            case 0:
                try {
                    try {
                        c0667Bc.g(th);
                    } finally {
                        if (uncaughtExceptionHandler != null) {
                            uncaughtExceptionHandler.uncaughtException(thread, th);
                        }
                    }
                } catch (Throwable unused) {
                    p120p3.h.d("AdMob exception reporter failed reporting the exception.");
                }
                if (uncaughtExceptionHandler != null) {
                    return;
                } else {
                    return;
                }
            default:
                try {
                    try {
                        c0667Bc.g(th);
                    } catch (Throwable unused2) {
                        p120p3.h.d("AdMob exception reporter failed reporting the exception.");
                    }
                    if (uncaughtExceptionHandler != null) {
                        return;
                    } else {
                        return;
                    }
                } finally {
                    if (uncaughtExceptionHandler != null) {
                        uncaughtExceptionHandler.uncaughtException(thread, th);
                    }
                }
                break;
        }
    }
}

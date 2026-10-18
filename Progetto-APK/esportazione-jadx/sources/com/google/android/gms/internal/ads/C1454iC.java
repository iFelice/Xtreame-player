package com.google.android.gms.internal.ads;

import java.util.logging.Logger;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.iC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1454iC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f19274a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Logger f19275b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f19276c;

    public C1454iC(int i8, Class cls) {
        if (i8 != 1) {
            this.f19276c = new Jz();
            this.f19274a = cls.getName();
        } else {
            this.f19276c = new Object();
            this.f19274a = cls.getName();
        }
    }

    public final Logger a() {
        Logger logger = this.f19275b;
        if (logger != null) {
            return logger;
        }
        synchronized (((Jz) this.f19276c)) {
            try {
                Logger logger2 = this.f19275b;
                if (logger2 != null) {
                    return logger2;
                }
                Logger logger3 = Logger.getLogger(this.f19274a);
                this.f19275b = logger3;
                return logger3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class A3 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean f11959c = B3.f12095a;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f11960a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f11961b = false;

    public final synchronized void a(long j8, String str) {
        if (this.f11961b) {
            throw new IllegalStateException("Marker added to finished log");
        }
        this.f11960a.add(new C2326z3(j8, SystemClock.elapsedRealtime(), str));
    }

    public final synchronized void b(String str) {
        long j8;
        this.f11961b = true;
        if (this.f11960a.size() == 0) {
            j8 = 0;
        } else {
            long j9 = ((C2326z3) this.f11960a.get(0)).f22115c;
            ArrayList arrayList = this.f11960a;
            j8 = ((C2326z3) arrayList.get(arrayList.size() - 1)).f22115c - j9;
        }
        if (j8 > 0) {
            long j10 = ((C2326z3) this.f11960a.get(0)).f22115c;
            B3.a("(%-4d ms) %s", Long.valueOf(j8), str);
            for (C2326z3 c2326z3 : this.f11960a) {
                long j11 = c2326z3.f22115c;
                B3.a("(+%-4d) [%2d] %s", Long.valueOf(j11 - j10), Long.valueOf(c2326z3.f22114b), c2326z3.f22113a);
                j10 = j11;
            }
        }
    }

    public final void finalize() {
        if (this.f11961b) {
            return;
        }
        b("Request on the loose");
        B3.b("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
    }
}

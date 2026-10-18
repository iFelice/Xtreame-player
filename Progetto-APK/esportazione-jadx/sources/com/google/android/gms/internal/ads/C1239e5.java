package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.e5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1239e5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f18481a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f18482b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AbstractC2073uA f18483c;

    static {
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
        Integer.toString(7, 36);
    }

    public /* synthetic */ C1239e5(Uri uri, List list, AbstractC2073uA abstractC2073uA) {
        this.f18481a = uri;
        ArrayList arrayList = AbstractC2140va.f21524a;
        this.f18482b = list;
        this.f18483c = abstractC2073uA;
        C1917rA c1917rA = new C1917rA();
        if (abstractC2073uA.size() <= 0) {
            c1917rA.h();
        } else {
            A0.O.I(abstractC2073uA.get(0));
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1239e5)) {
            return false;
        }
        C1239e5 c1239e5 = (C1239e5) obj;
        if (this.f18481a.equals(c1239e5.f18481a) && this.f18482b.equals(c1239e5.f18482b) && this.f18483c.equals(c1239e5.f18483c)) {
            Object obj2 = -9223372036854775807L;
            if (obj2.equals(obj2)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (int) ((((long) ((this.f18483c.hashCode() + ((this.f18482b.hashCode() + (this.f18481a.hashCode() * 923521)) * 961)) * 31)) * 31) - Long.MAX_VALUE);
    }
}

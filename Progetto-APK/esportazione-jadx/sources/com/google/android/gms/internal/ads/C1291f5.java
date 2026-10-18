package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Base64;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.f5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1291f5 extends AbstractCallableC2016t5 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final K4 f18723i = new K4(15);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Context f18724h;

    public C1291f5(V4 v5, V3 v7, int i8, Context context) {
        super(v5, "5UR6HKB81c0cBAmhqUCkwnSn0PivsbvOC36lSRnvbJazdJtsmM3DNCGH8hJ11MS9", "UrsneQ7OIRNo8EjOO9YdieQqewqlcsXgRCgjv7EyHmQ=", v7, i8, 29);
        this.f18724h = context;
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC2016t5
    public final void a() {
        V3 v5 = this.f21035d;
        v5.d();
        C1496j4.O0((C1496j4) v5.f20255H, "E");
        AtomicReference atomicReferenceD = f18723i.d(this.f18724h.getPackageName());
        if (atomicReferenceD.get() == null) {
            synchronized (atomicReferenceD) {
                try {
                    if (atomicReferenceD.get() == null) {
                        atomicReferenceD.set((String) this.f21036e.invoke(null, this.f18724h));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        String str = (String) atomicReferenceD.get();
        synchronized (this.f21035d) {
            V3 v7 = this.f21035d;
            String strEncodeToString = Base64.encodeToString(str.getBytes(), 11);
            v7.d();
            C1496j4.O0((C1496j4) v7.f20255H, strEncodeToString);
        }
    }
}

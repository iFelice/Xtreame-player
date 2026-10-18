package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.iw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1487iw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static p052g4.h f19387a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static W3.i f19388b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f19389c = new Object();

    /* JADX WARN: Code duplicated, block: B:19:0x002d A[Catch: all -> 0x0021, TryCatch #0 {all -> 0x0021, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x000e, B:9:0x0012, B:11:0x0018, B:17:0x0025, B:20:0x003a, B:19:0x002d), top: B:24:0x0003 }] */
    public static void a(Context context, boolean z7) {
        synchronized (f19389c) {
            try {
                if (f19388b == null) {
                    f19388b = new W3.i(context);
                }
                p052g4.h hVar = f19387a;
                if (hVar == null || (hVar.g() && !f19387a.h())) {
                    W3.i iVar = f19388b;
                    com.bumptech.glide.c.i(iVar, "the appSetIdClient shouldn't be null");
                    f19387a = iVar.a();
                } else if (z7 && f19387a.g()) {
                    W3.i iVar2 = f19388b;
                    com.bumptech.glide.c.i(iVar2, "the appSetIdClient shouldn't be null");
                    f19387a = iVar2.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

package com.google.android.gms.internal.measurement;

import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public abstract class S1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p132r.f f23001a = new p132r.f();

    public static synchronized Uri a() {
        p132r.f fVar = f23001a;
        Uri uri = (Uri) fVar.get("com.google.android.gms.measurement");
        if (uri != null) {
            return uri;
        }
        Uri uri2 = Uri.parse("content://com.google.android.gms.phenotype/".concat(String.valueOf(Uri.encode("com.google.android.gms.measurement"))));
        fVar.put("com.google.android.gms.measurement", uri2);
        return uri2;
    }
}

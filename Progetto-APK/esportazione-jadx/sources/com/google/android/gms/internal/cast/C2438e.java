package com.google.android.gms.internal.cast;

import D3.C0158b;
import android.content.Context;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2438e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f22724a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f22725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final D3.C f22726c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0158b f22727d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BinderC2486q f22728e;

    public C2438e(Context context, C0158b c0158b, BinderC2486q binderC2486q) {
        String strA;
        boolean zIsEmpty = Collections.unmodifiableList(c0158b.f2353H).isEmpty();
        String str = c0158b.f2352G;
        if (zIsEmpty) {
            strA = U4.a.a(str);
        } else {
            List listUnmodifiableList = Collections.unmodifiableList(c0158b.f2353H);
            if (str == null) {
                throw new IllegalArgumentException("applicationId cannot be null");
            }
            if (listUnmodifiableList == null) {
                throw new IllegalArgumentException("namespaces cannot be null");
            }
            C3.J j8 = new C3.J();
            j8.f1467a = "com.google.android.gms.cast.CATEGORY_CAST";
            j8.f1468b = str;
            j8.f1469c = listUnmodifiableList;
            strA = C3.J.a(j8);
        }
        this.f22726c = new D3.C(this);
        com.bumptech.glide.c.h(context);
        this.f22724a = context.getApplicationContext();
        com.bumptech.glide.c.e(strA);
        this.f22725b = strA;
        this.f22727d = c0158b;
        this.f22728e = binderC2486q;
    }
}

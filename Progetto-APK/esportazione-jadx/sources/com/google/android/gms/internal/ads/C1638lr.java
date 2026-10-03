package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.lr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1638lr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f19859a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f19860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f19861c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f19862d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Integer f19863e;

    public C1638lr(String str, String str2, int i8, long j8, Integer num) {
        this.f19859a = str;
        this.f19860b = str2;
        this.f19861c = i8;
        this.f19862d = j8;
        this.f19863e = num;
    }

    public final String toString() {
        Integer num;
        String strL = this.f19859a + "." + this.f19861c + "." + this.f19862d;
        String str = this.f19860b;
        if (!TextUtils.isEmpty(str)) {
            strL = com.google.protobuf.U2.l(strL, ".", str);
        }
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15948u1)).booleanValue() || (num = this.f19863e) == null || TextUtils.isEmpty(str)) {
            return strL;
        }
        return strL + "." + num;
    }
}

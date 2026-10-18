package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.f2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1288f2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f18711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f18712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f18713c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f18714d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f18715e;

    public C1288f2(int i8, int i9, int i10, int i11, int i12) {
        this.f18711a = i8;
        this.f18712b = i9;
        this.f18713c = i10;
        this.f18714d = i11;
        this.f18715e = i12;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x0032  */
    public static C1288f2 a(String str) {
        p113o3.r.J(str.startsWith("Format:"));
        String[] strArrSplit = TextUtils.split(str.substring(7), ",");
        int i8 = 0;
        int i9 = -1;
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        while (true) {
            int length = strArrSplit.length;
            if (i8 >= length) {
                if (i9 == -1 || i10 == -1 || i12 == -1) {
                    return null;
                }
                return new C1288f2(i9, i10, i11, i12, length);
            }
            String strM = p113o3.r.m(strArrSplit[i8].trim());
            strM.getClass();
            switch (strM) {
                case "end":
                    i10 = i8;
                    break;
                case "text":
                    i12 = i8;
                    break;
                case "start":
                    i9 = i8;
                    break;
                case "style":
                    i11 = i8;
                    break;
            }
            i8++;
        }
    }

    public C1288f2(int i8, long j8, int i9, int i10, int i11, int i12) {
        this.f18711a = i8;
        this.f18712b = i9;
        this.f18713c = i10;
        this.f18714d = i11;
        this.f18715e = i12;
    }
}

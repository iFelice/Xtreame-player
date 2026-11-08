package com.google.android.gms.internal.ads;

import android.graphics.Color;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.i2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1444i2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f19222a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f19223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f19224c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Integer f19225d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f19226e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f19227f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f19228g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f19229h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f19230i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f19231j;

    public C1444i2(String str, int i8, Integer num, Integer num2, float f8, boolean z7, boolean z8, boolean z9, boolean z10, int i9) {
        this.f19222a = str;
        this.f19223b = i8;
        this.f19224c = num;
        this.f19225d = num2;
        this.f19226e = f8;
        this.f19227f = z7;
        this.f19228g = z8;
        this.f19229h = z9;
        this.f19230i = z10;
        this.f19231j = i9;
    }

    public static Integer a(String str) {
        try {
            long j8 = str.startsWith("&H") ? Long.parseLong(str.substring(2), 16) : Long.parseLong(str);
            p113o3.r.J(j8 <= 4294967295L);
            return Integer.valueOf(Color.argb(Cw.w0(((j8 >> 24) & 255) ^ 255), Cw.w0(j8 & 255), Cw.w0((j8 >> 8) & 255), Cw.w0((j8 >> 16) & 255)));
        } catch (IllegalArgumentException e8) {
            Zo.g("SsaStyle", "Failed to parse color expression: '" + str + "'", e8);
            return null;
        }
    }

    public static boolean b(String str) {
        try {
            int i8 = Integer.parseInt(str);
            return i8 == 1 || i8 == -1;
        } catch (NumberFormatException e8) {
            Zo.g("SsaStyle", "Failed to parse boolean value: '" + str + "'", e8);
            return false;
        }
    }
}

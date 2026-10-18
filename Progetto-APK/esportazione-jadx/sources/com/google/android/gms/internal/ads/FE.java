package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public final class FE implements IE {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f13335a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NG f13336b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final XG f13337c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f13338d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EnumC2235xG f13339e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Integer f13340f;

    public FE(String str, NG ng, XG xg, int i8, EnumC2235xG enumC2235xG, Integer num) {
        this.f13335a = str;
        this.f13336b = ng;
        this.f13337c = xg;
        this.f13338d = i8;
        this.f13339e = enumC2235xG;
        this.f13340f = num;
    }

    public static FE a(String str, XG xg, int i8, EnumC2235xG enumC2235xG, Integer num) {
        if (enumC2235xG == EnumC2235xG.RAW) {
            if (num != null) {
                throw new GeneralSecurityException("Keys with output prefix type raw should not have an id requirement.");
            }
        } else if (num == null) {
            throw new GeneralSecurityException("Keys with output prefix type different from raw should have an id requirement.");
        }
        return new FE(str, NE.a(str), xg, i8, enumC2235xG, num);
    }
}

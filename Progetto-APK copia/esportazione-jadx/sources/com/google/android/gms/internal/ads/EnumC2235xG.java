package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.xG, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public enum EnumC2235xG implements InterfaceC1976sH {
    UNKNOWN_PREFIX(0),
    TINK(1),
    LEGACY(2),
    RAW(3),
    CRUNCHY(4),
    UNRECOGNIZED(-1);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f21867G;

    EnumC2235xG(int i8) {
        this.f21867G = i8;
    }

    public static EnumC2235xG a(int i8) {
        if (i8 == 0) {
            return UNKNOWN_PREFIX;
        }
        if (i8 == 1) {
            return TINK;
        }
        if (i8 == 2) {
            return LEGACY;
        }
        if (i8 == 3) {
            return RAW;
        }
        if (i8 != 4) {
            return null;
        }
        return CRUNCHY;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(zza());
    }

    public final int zza() {
        if (this != UNRECOGNIZED) {
            return this.f21867G;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}

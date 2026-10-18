package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public enum TF implements InterfaceC1976sH {
    UNKNOWN_HASH(0),
    SHA1(1),
    SHA384(2),
    SHA256(3),
    SHA512(4),
    SHA224(5),
    UNRECOGNIZED(-1);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f16626G;

    TF(int i8) {
        this.f16626G = i8;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(zza());
    }

    public final int zza() {
        if (this != UNRECOGNIZED) {
            return this.f16626G;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}

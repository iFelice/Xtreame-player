package com.google.protobuf;

/* JADX INFO: loaded from: classes2.dex */
public enum S0 implements InterfaceC2933o1 {
    CARDINALITY_UNKNOWN(0),
    CARDINALITY_OPTIONAL(1),
    CARDINALITY_REQUIRED(2),
    CARDINALITY_REPEATED(3),
    UNRECOGNIZED(-1);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f24300G;

    S0(int i8) {
        this.f24300G = i8;
    }

    @Override // com.google.protobuf.InterfaceC2933o1
    public final int a() {
        if (this != UNRECOGNIZED) {
            return this.f24300G;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}

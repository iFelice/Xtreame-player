package com.google.protobuf;

/* JADX INFO: renamed from: com.google.protobuf.p0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public enum EnumC2936p0 implements InterfaceC2933o1 {
    IDEMPOTENCY_UNKNOWN(0),
    NO_SIDE_EFFECTS(1),
    IDEMPOTENT(2);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f24489G;

    EnumC2936p0(int i8) {
        this.f24489G = i8;
    }

    public static EnumC2936p0 b(int i8) {
        if (i8 == 0) {
            return IDEMPOTENCY_UNKNOWN;
        }
        if (i8 == 1) {
            return NO_SIDE_EFFECTS;
        }
        if (i8 != 2) {
            return null;
        }
        return IDEMPOTENT;
    }

    @Override // com.google.protobuf.InterfaceC2933o1
    public final int a() {
        return this.f24489G;
    }
}

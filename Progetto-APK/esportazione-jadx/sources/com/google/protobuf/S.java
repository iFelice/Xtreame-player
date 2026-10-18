package com.google.protobuf;

/* JADX INFO: loaded from: classes2.dex */
public enum S implements InterfaceC2933o1 {
    LABEL_OPTIONAL(1),
    LABEL_REQUIRED(2),
    LABEL_REPEATED(3);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f24293G;

    S(int i8) {
        this.f24293G = i8;
    }

    public static S b(int i8) {
        if (i8 == 1) {
            return LABEL_OPTIONAL;
        }
        if (i8 == 2) {
            return LABEL_REQUIRED;
        }
        if (i8 != 3) {
            return null;
        }
        return LABEL_REPEATED;
    }

    @Override // com.google.protobuf.InterfaceC2933o1
    public final int a() {
        return this.f24293G;
    }
}

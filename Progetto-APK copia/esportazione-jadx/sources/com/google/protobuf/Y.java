package com.google.protobuf;

/* JADX INFO: loaded from: classes2.dex */
public enum Y implements InterfaceC2933o1 {
    STRING(0),
    CORD(1),
    STRING_PIECE(2);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f24399G;

    Y(int i8) {
        this.f24399G = i8;
    }

    public static Y b(int i8) {
        if (i8 == 0) {
            return STRING;
        }
        if (i8 == 1) {
            return CORD;
        }
        if (i8 != 2) {
            return null;
        }
        return STRING_PIECE;
    }

    @Override // com.google.protobuf.InterfaceC2933o1
    public final int a() {
        return this.f24399G;
    }
}

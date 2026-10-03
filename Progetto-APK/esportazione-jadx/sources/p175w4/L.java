package p175w4;

import com.google.protobuf.InterfaceC2933o1;

/* JADX INFO: loaded from: classes.dex */
public enum L implements InterfaceC2933o1 {
    STRING(0),
    BOOL(1),
    INT64(2),
    UNRECOGNIZED(-1);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f31026G;

    L(int i8) {
        this.f31026G = i8;
    }

    @Override // com.google.protobuf.InterfaceC2933o1
    public final int a() {
        if (this != UNRECOGNIZED) {
            return this.f31026G;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}

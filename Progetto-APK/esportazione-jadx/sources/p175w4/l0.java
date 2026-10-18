package p175w4;

import com.google.protobuf.InterfaceC2933o1;

/* JADX INFO: loaded from: classes.dex */
public enum l0 implements InterfaceC2933o1 {
    UNSPECIFIED(0),
    INT64(1),
    BOOL(2),
    STRING(3),
    DOUBLE(4),
    UNRECOGNIZED(-1);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f31068G;

    l0(int i8) {
        this.f31068G = i8;
    }

    public static l0 b(int i8) {
        if (i8 == 0) {
            return UNSPECIFIED;
        }
        if (i8 == 1) {
            return INT64;
        }
        if (i8 == 2) {
            return BOOL;
        }
        if (i8 == 3) {
            return STRING;
        }
        if (i8 != 4) {
            return null;
        }
        return DOUBLE;
    }

    @Override // com.google.protobuf.InterfaceC2933o1
    public final int a() {
        if (this != UNRECOGNIZED) {
            return this.f31068G;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}

package V4;

import com.google.protobuf.InterfaceC2933o1;

/* JADX INFO: loaded from: classes.dex */
public enum z implements InterfaceC2933o1 {
    UNSPECIFIED_FETCH_ERROR(0),
    SERVER_ERROR(1),
    CLIENT_ERROR(2),
    NETWORK_ERROR(3);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f7172G;

    z(int i8) {
        this.f7172G = i8;
    }

    public static z b(int i8) {
        if (i8 == 0) {
            return UNSPECIFIED_FETCH_ERROR;
        }
        if (i8 == 1) {
            return SERVER_ERROR;
        }
        if (i8 == 2) {
            return CLIENT_ERROR;
        }
        if (i8 != 3) {
            return null;
        }
        return NETWORK_ERROR;
    }

    @Override // com.google.protobuf.InterfaceC2933o1
    public final int a() {
        return this.f7172G;
    }
}

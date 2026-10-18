package V4;

import com.google.protobuf.InterfaceC2933o1;

/* JADX INFO: loaded from: classes.dex */
public enum r implements InterfaceC2933o1 {
    UNKNOWN_DISMISS_TYPE(0),
    AUTO(1),
    CLICK(2),
    SWIPE(3);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f7153G;

    r(int i8) {
        this.f7153G = i8;
    }

    public static r b(int i8) {
        if (i8 == 0) {
            return UNKNOWN_DISMISS_TYPE;
        }
        if (i8 == 1) {
            return AUTO;
        }
        if (i8 == 2) {
            return CLICK;
        }
        if (i8 != 3) {
            return null;
        }
        return SWIPE;
    }

    @Override // com.google.protobuf.InterfaceC2933o1
    public final int a() {
        return this.f7153G;
    }
}

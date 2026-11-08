package V4;

import com.google.protobuf.InterfaceC2933o1;

/* JADX INFO: loaded from: classes.dex */
public enum t implements InterfaceC2933o1 {
    UNKNOWN_EVENT_TYPE(0),
    IMPRESSION_EVENT_TYPE(1),
    CLICK_EVENT_TYPE(2);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f7159G;

    t(int i8) {
        this.f7159G = i8;
    }

    public static t b(int i8) {
        if (i8 == 0) {
            return UNKNOWN_EVENT_TYPE;
        }
        if (i8 == 1) {
            return IMPRESSION_EVENT_TYPE;
        }
        if (i8 != 2) {
            return null;
        }
        return CLICK_EVENT_TYPE;
    }

    @Override // com.google.protobuf.InterfaceC2933o1
    public final int a() {
        return this.f7159G;
    }
}

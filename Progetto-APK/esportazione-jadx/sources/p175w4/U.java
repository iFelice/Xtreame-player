package p175w4;

import com.google.protobuf.InterfaceC2933o1;

/* JADX INFO: loaded from: classes.dex */
public enum U implements InterfaceC2933o1 {
    METRIC_KIND_UNSPECIFIED(0),
    GAUGE(1),
    DELTA(2),
    CUMULATIVE(3),
    UNRECOGNIZED(-1);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f31043G;

    U(int i8) {
        this.f31043G = i8;
    }

    @Override // com.google.protobuf.InterfaceC2933o1
    public final int a() {
        if (this != UNRECOGNIZED) {
            return this.f31043G;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}

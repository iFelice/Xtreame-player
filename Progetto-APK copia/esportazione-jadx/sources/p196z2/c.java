package p196z2;

import p018c1.d;

/* JADX INFO: loaded from: classes.dex */
public final class c extends d {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f31757H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c(int i8) {
        super(2);
        this.f31757H = i8;
    }

    public final k n() {
        switch (this.f31757H) {
            case 0:
                return new b(this);
            case 1:
                return new g(this);
            default:
                return new m(this);
        }
    }
}

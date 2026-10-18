package Y0;

import p117p0.x;

/* JADX INFO: loaded from: classes.dex */
public final class d implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8023a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f8024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f8025c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f8026d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f8027e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f8028f;

    public d(int i8, int i9, int i10, int i11, int i12, int i13) {
        this.f8023a = i8;
        this.f8024b = i9;
        this.f8025c = i10;
        this.f8026d = i11;
        this.f8027e = i12;
        this.f8028f = i13;
    }

    public final int a() {
        int i8 = this.f8023a;
        if (i8 == 1935960438) {
            return 2;
        }
        if (i8 == 1935963489) {
            return 1;
        }
        if (i8 == 1937012852) {
            return 3;
        }
        x.f("AviStreamHeaderChunk", "Found unsupported streamType fourCC: " + Integer.toHexString(i8));
        return -1;
    }

    @Override // Y0.a
    public final int getType() {
        return 1752331379;
    }
}

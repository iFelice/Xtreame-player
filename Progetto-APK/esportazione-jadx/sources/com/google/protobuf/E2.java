package com.google.protobuf;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
public final class E2 extends G2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f24247b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ E2(Unsafe unsafe, int i8) {
        super(unsafe);
        this.f24247b = i8;
    }

    @Override // com.google.protobuf.G2
    public final void c(long j8, byte[] bArr, long j9) {
        switch (this.f24247b) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // com.google.protobuf.G2
    public final boolean d(Object obj, long j8) {
        switch (this.f24247b) {
            case 0:
                if (H2.f24260h) {
                    if (H2.h(obj, j8) == 0) {
                        return false;
                    }
                } else if (H2.i(obj, j8) == 0) {
                    return false;
                }
                return true;
            default:
                if (H2.f24260h) {
                    if (H2.h(obj, j8) == 0) {
                        return false;
                    }
                } else if (H2.i(obj, j8) == 0) {
                    return false;
                }
                return true;
        }
    }

    @Override // com.google.protobuf.G2
    public final byte e(long j8) {
        switch (this.f24247b) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // com.google.protobuf.G2
    public final byte f(Object obj, long j8) {
        switch (this.f24247b) {
            case 0:
                return H2.f24260h ? H2.h(obj, j8) : H2.i(obj, j8);
            default:
                return H2.f24260h ? H2.h(obj, j8) : H2.i(obj, j8);
        }
    }

    @Override // com.google.protobuf.G2
    public final double g(Object obj, long j8) {
        switch (this.f24247b) {
            case 0:
                break;
        }
        return Double.longBitsToDouble(j(obj, j8));
    }

    @Override // com.google.protobuf.G2
    public final float h(Object obj, long j8) {
        switch (this.f24247b) {
            case 0:
                break;
        }
        return Float.intBitsToFloat(i(obj, j8));
    }

    @Override // com.google.protobuf.G2
    public final void m(Object obj, long j8, boolean z7) {
        switch (this.f24247b) {
            case 0:
                if (!H2.f24260h) {
                    H2.n(obj, j8, z7 ? (byte) 1 : (byte) 0);
                } else {
                    H2.m(obj, j8, z7 ? (byte) 1 : (byte) 0);
                }
                break;
            default:
                if (!H2.f24260h) {
                    H2.n(obj, j8, z7 ? (byte) 1 : (byte) 0);
                } else {
                    H2.m(obj, j8, z7 ? (byte) 1 : (byte) 0);
                }
                break;
        }
    }

    @Override // com.google.protobuf.G2
    public final void n(Object obj, long j8, byte b8) {
        switch (this.f24247b) {
            case 0:
                if (!H2.f24260h) {
                    H2.n(obj, j8, b8);
                } else {
                    H2.m(obj, j8, b8);
                }
                break;
            default:
                if (!H2.f24260h) {
                    H2.n(obj, j8, b8);
                } else {
                    H2.m(obj, j8, b8);
                }
                break;
        }
    }

    @Override // com.google.protobuf.G2
    public final void o(Object obj, long j8, double d6) {
        switch (this.f24247b) {
            case 0:
                r(obj, j8, Double.doubleToLongBits(d6));
                break;
            default:
                r(obj, j8, Double.doubleToLongBits(d6));
                break;
        }
    }

    @Override // com.google.protobuf.G2
    public final void p(Object obj, long j8, float f8) {
        switch (this.f24247b) {
            case 0:
                q(obj, Float.floatToIntBits(f8), j8);
                break;
            default:
                q(obj, Float.floatToIntBits(f8), j8);
                break;
        }
    }

    @Override // com.google.protobuf.G2
    public final boolean u() {
        return false;
    }
}

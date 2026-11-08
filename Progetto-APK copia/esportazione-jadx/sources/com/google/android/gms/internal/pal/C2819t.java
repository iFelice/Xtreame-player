package com.google.android.gms.internal.pal;

import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2819t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f24002a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public C2827u f24003b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f24004c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f24005d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f24006e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f24008g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f24009h = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f24007f = 0;

    public /* synthetic */ C2819t(byte[] bArr, int i8) {
        this.f24004c = bArr;
        this.f24005d = i8;
    }

    public static int i(int i8) {
        return (-(i8 & 1)) ^ (i8 >>> 1);
    }

    public static long j(long j8) {
        return (-(j8 & 1)) ^ (j8 >>> 1);
    }

    public final int a(int i8) {
        if (i8 < 0) {
            throw L.c();
        }
        int i9 = i8 + this.f24007f;
        if (i9 < 0) {
            throw L.d();
        }
        int i10 = this.f24009h;
        if (i9 > i10) {
            throw L.e();
        }
        this.f24009h = i9;
        int i11 = this.f24005d + this.f24006e;
        this.f24005d = i11;
        if (i11 > i9) {
            int i12 = i11 - i9;
            this.f24006e = i12;
            this.f24005d = i11 - i12;
        } else {
            this.f24006e = 0;
        }
        return i10;
    }

    public final int b() throws L {
        int i8 = this.f24007f;
        if (this.f24005d - i8 < 4) {
            throw L.e();
        }
        this.f24007f = i8 + 4;
        byte[] bArr = this.f24004c;
        return ((bArr[i8 + 3] & 255) << 24) | (bArr[i8] & 255) | ((bArr[i8 + 1] & 255) << 8) | ((bArr[i8 + 2] & 255) << 16);
    }

    public final int c() {
        int i8;
        int i9 = this.f24007f;
        int i10 = this.f24005d;
        if (i10 != i9) {
            int i11 = i9 + 1;
            byte[] bArr = this.f24004c;
            byte b8 = bArr[i9];
            if (b8 >= 0) {
                this.f24007f = i11;
                return b8;
            }
            if (i10 - i11 >= 9) {
                int i12 = i9 + 2;
                int i13 = (bArr[i11] << 7) ^ b8;
                if (i13 < 0) {
                    i8 = i13 ^ (-128);
                } else {
                    int i14 = i9 + 3;
                    int i15 = (bArr[i12] << MqttWireMessage.MESSAGE_TYPE_DISCONNECT) ^ i13;
                    if (i15 >= 0) {
                        i8 = i15 ^ 16256;
                    } else {
                        int i16 = i9 + 4;
                        int i17 = i15 ^ (bArr[i14] << 21);
                        if (i17 < 0) {
                            i8 = (-2080896) ^ i17;
                        } else {
                            i14 = i9 + 5;
                            byte b9 = bArr[i16];
                            int i18 = (i17 ^ (b9 << 28)) ^ 266354560;
                            if (b9 < 0) {
                                i16 = i9 + 6;
                                if (bArr[i14] < 0) {
                                    i14 = i9 + 7;
                                    if (bArr[i16] < 0) {
                                        i16 = i9 + 8;
                                        if (bArr[i14] < 0) {
                                            i14 = i9 + 9;
                                            if (bArr[i16] < 0) {
                                                int i19 = i9 + 10;
                                                if (bArr[i14] >= 0) {
                                                    i12 = i19;
                                                    i8 = i18;
                                                }
                                            }
                                        }
                                    }
                                }
                                i8 = i18;
                            }
                            i8 = i18;
                        }
                        i12 = i16;
                    }
                    i12 = i14;
                }
                this.f24007f = i12;
                return i8;
            }
        }
        return (int) g();
    }

    public final int d() throws L {
        if (h()) {
            this.f24008g = 0;
            return 0;
        }
        int iC = c();
        this.f24008g = iC;
        if ((iC >>> 3) != 0) {
            return iC;
        }
        throw new L("Protocol message contained an invalid tag (zero).");
    }

    public final long e() throws L {
        int i8 = this.f24007f;
        if (this.f24005d - i8 < 8) {
            throw L.e();
        }
        this.f24007f = i8 + 8;
        byte[] bArr = this.f24004c;
        return ((((long) bArr[i8 + 7]) & 255) << 56) | (((long) bArr[i8]) & 255) | ((((long) bArr[i8 + 1]) & 255) << 8) | ((((long) bArr[i8 + 2]) & 255) << 16) | ((((long) bArr[i8 + 3]) & 255) << 24) | ((((long) bArr[i8 + 4]) & 255) << 32) | ((((long) bArr[i8 + 5]) & 255) << 40) | ((((long) bArr[i8 + 6]) & 255) << 48);
    }

    public final long f() {
        long j8;
        long j9;
        long j10;
        int i8 = this.f24007f;
        int i9 = this.f24005d;
        if (i9 != i8) {
            int i10 = i8 + 1;
            byte[] bArr = this.f24004c;
            byte b8 = bArr[i8];
            if (b8 >= 0) {
                this.f24007f = i10;
                return b8;
            }
            if (i9 - i10 >= 9) {
                int i11 = i8 + 2;
                int i12 = (bArr[i10] << 7) ^ b8;
                if (i12 < 0) {
                    j8 = i12 ^ (-128);
                } else {
                    int i13 = i8 + 3;
                    int i14 = (bArr[i11] << MqttWireMessage.MESSAGE_TYPE_DISCONNECT) ^ i12;
                    if (i14 >= 0) {
                        j8 = i14 ^ 16256;
                    } else {
                        int i15 = i8 + 4;
                        int i16 = i14 ^ (bArr[i13] << 21);
                        if (i16 < 0) {
                            long j11 = (-2080896) ^ i16;
                            i11 = i15;
                            j8 = j11;
                        } else {
                            i13 = i8 + 5;
                            long j12 = (((long) bArr[i15]) << 28) ^ ((long) i16);
                            if (j12 >= 0) {
                                j10 = 266354560;
                            } else {
                                int i17 = i8 + 6;
                                long j13 = j12 ^ (((long) bArr[i13]) << 35);
                                if (j13 < 0) {
                                    j9 = -34093383808L;
                                } else {
                                    i13 = i8 + 7;
                                    j12 = j13 ^ (((long) bArr[i17]) << 42);
                                    if (j12 >= 0) {
                                        j10 = 4363953127296L;
                                    } else {
                                        i17 = i8 + 8;
                                        j13 = j12 ^ (((long) bArr[i13]) << 49);
                                        if (j13 < 0) {
                                            j9 = -558586000294016L;
                                        } else {
                                            i13 = i8 + 9;
                                            long j14 = (j13 ^ (((long) bArr[i17]) << 56)) ^ 71499008037633920L;
                                            if (j14 < 0) {
                                                int i18 = i8 + 10;
                                                if (bArr[i13] >= 0) {
                                                    j8 = j14;
                                                    i11 = i18;
                                                }
                                            } else {
                                                j8 = j14;
                                            }
                                        }
                                    }
                                }
                                j8 = j13 ^ j9;
                                i11 = i17;
                            }
                            j8 = j12 ^ j10;
                        }
                    }
                    i11 = i13;
                }
                this.f24007f = i11;
                return j8;
            }
        }
        return g();
    }

    public final long g() throws L {
        long j8 = 0;
        for (int i8 = 0; i8 < 64; i8 += 7) {
            int i9 = this.f24007f;
            if (i9 == this.f24005d) {
                throw L.e();
            }
            this.f24007f = i9 + 1;
            byte b8 = this.f24004c[i9];
            j8 |= ((long) (b8 & 127)) << i8;
            if ((b8 & 128) == 0) {
                return j8;
            }
        }
        throw new L("CodedInputStream encountered a malformed varint.");
    }

    public final boolean h() {
        return this.f24007f == this.f24005d;
    }
}

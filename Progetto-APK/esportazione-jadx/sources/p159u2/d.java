package p159u2;

import A0.O;
import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ByteBuffer f30468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f30469c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f30467a = new byte[256];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f30470d = 0;

    public final boolean a() {
        return this.f30469c.f30457b != 0;
    }

    public final c b() {
        byte[] bArr;
        if (this.f30468b == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (a()) {
            return this.f30469c;
        }
        StringBuilder sb = new StringBuilder();
        for (int i8 = 0; i8 < 6; i8++) {
            sb.append((char) c());
        }
        if (sb.toString().startsWith("GIF")) {
            this.f30469c.f30461f = this.f30468b.getShort();
            this.f30469c.f30462g = this.f30468b.getShort();
            int iC = c();
            c cVar = this.f30469c;
            cVar.f30463h = (iC & 128) != 0;
            cVar.f30464i = (int) Math.pow(2.0d, (iC & 7) + 1);
            this.f30469c.f30465j = c();
            c cVar2 = this.f30469c;
            c();
            cVar2.getClass();
            if (this.f30469c.f30463h && !a()) {
                c cVar3 = this.f30469c;
                cVar3.f30456a = e(cVar3.f30464i);
                c cVar4 = this.f30469c;
                cVar4.f30466k = cVar4.f30456a[cVar4.f30465j];
            }
        } else {
            this.f30469c.f30457b = 1;
        }
        if (!a()) {
            boolean z7 = false;
            while (!z7 && !a() && this.f30469c.f30458c <= Integer.MAX_VALUE) {
                int iC2 = c();
                if (iC2 == 33) {
                    int iC3 = c();
                    if (iC3 == 1) {
                        f();
                    } else if (iC3 == 249) {
                        this.f30469c.f30459d = new b();
                        c();
                        int iC4 = c();
                        b bVar = this.f30469c.f30459d;
                        int i9 = (iC4 & 28) >> 2;
                        bVar.f30451g = i9;
                        if (i9 == 0) {
                            bVar.f30451g = 1;
                        }
                        bVar.f30450f = (iC4 & 1) != 0;
                        short s7 = this.f30468b.getShort();
                        if (s7 < 2) {
                            s7 = 10;
                        }
                        b bVar2 = this.f30469c.f30459d;
                        bVar2.f30453i = s7 * 10;
                        bVar2.f30452h = c();
                        c();
                    } else if (iC3 == 254) {
                        f();
                    } else if (iC3 != 255) {
                        f();
                    } else {
                        d();
                        StringBuilder sb2 = new StringBuilder();
                        int i10 = 0;
                        while (true) {
                            bArr = this.f30467a;
                            if (i10 >= 11) {
                                break;
                            }
                            sb2.append((char) bArr[i10]);
                            i10++;
                        }
                        if (sb2.toString().equals("NETSCAPE2.0")) {
                            do {
                                d();
                                if (bArr[0] == 1) {
                                    byte b8 = bArr[1];
                                    byte b9 = bArr[2];
                                    this.f30469c.getClass();
                                }
                                if (this.f30470d <= 0) {
                                    break;
                                }
                            } while (!a());
                        } else {
                            f();
                        }
                    }
                } else if (iC2 == 44) {
                    c cVar5 = this.f30469c;
                    if (cVar5.f30459d == null) {
                        cVar5.f30459d = new b();
                    }
                    cVar5.f30459d.f30445a = this.f30468b.getShort();
                    this.f30469c.f30459d.f30446b = this.f30468b.getShort();
                    this.f30469c.f30459d.f30447c = this.f30468b.getShort();
                    this.f30469c.f30459d.f30448d = this.f30468b.getShort();
                    int iC5 = c();
                    boolean z8 = (iC5 & 128) != 0;
                    int iPow = (int) Math.pow(2.0d, (iC5 & 7) + 1);
                    b bVar3 = this.f30469c.f30459d;
                    bVar3.f30449e = (iC5 & 64) != 0;
                    if (z8) {
                        bVar3.f30455k = e(iPow);
                    } else {
                        bVar3.f30455k = null;
                    }
                    this.f30469c.f30459d.f30454j = this.f30468b.position();
                    c();
                    f();
                    if (!a()) {
                        c cVar6 = this.f30469c;
                        cVar6.f30458c++;
                        cVar6.f30460e.add(cVar6.f30459d);
                    }
                } else if (iC2 != 59) {
                    this.f30469c.f30457b = 1;
                } else {
                    z7 = true;
                }
            }
            c cVar7 = this.f30469c;
            if (cVar7.f30458c < 0) {
                cVar7.f30457b = 1;
            }
        }
        return this.f30469c;
    }

    public final int c() {
        try {
            return this.f30468b.get() & 255;
        } catch (Exception unused) {
            this.f30469c.f30457b = 1;
            return 0;
        }
    }

    public final void d() {
        int iC = c();
        this.f30470d = iC;
        if (iC <= 0) {
            return;
        }
        int i8 = 0;
        int i9 = 0;
        while (true) {
            try {
                int i10 = this.f30470d;
                if (i8 >= i10) {
                    return;
                }
                i9 = i10 - i8;
                this.f30468b.get(this.f30467a, i8, i9);
                i8 += i9;
            } catch (Exception e8) {
                if (Log.isLoggable("GifHeaderParser", 3)) {
                    StringBuilder sbD = O.D("Error Reading Block n: ", i8, " count: ", i9, " blockSize: ");
                    sbD.append(this.f30470d);
                    Log.d("GifHeaderParser", sbD.toString(), e8);
                }
                this.f30469c.f30457b = 1;
                return;
            }
        }
    }

    public final int[] e(int i8) {
        byte[] bArr = new byte[i8 * 3];
        int[] iArr = null;
        try {
            this.f30468b.get(bArr);
            iArr = new int[256];
            int i9 = 0;
            int i10 = 0;
            while (i9 < i8) {
                int i11 = bArr[i10] & 255;
                int i12 = i10 + 2;
                int i13 = bArr[i10 + 1] & 255;
                i10 += 3;
                int i14 = i9 + 1;
                iArr[i9] = (i13 << 8) | (i11 << 16) | (-16777216) | (bArr[i12] & 255);
                i9 = i14;
            }
        } catch (BufferUnderflowException e8) {
            if (Log.isLoggable("GifHeaderParser", 3)) {
                Log.d("GifHeaderParser", "Format Error Reading Color Table", e8);
            }
            this.f30469c.f30457b = 1;
        }
        return iArr;
    }

    public final void f() {
        int iC;
        do {
            iC = c();
            this.f30468b.position(Math.min(this.f30468b.position() + iC, this.f30468b.limit()));
        } while (iC > 0);
    }
}

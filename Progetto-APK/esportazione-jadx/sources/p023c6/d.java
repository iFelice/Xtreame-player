package p023c6;

import Q6.m;
import Q6.x;
import V.b;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import p113o3.r;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x f11451b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f11450a = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public c[] f11454e = new c[8];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11455f = 7;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f11456g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11457h = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11452c = 4096;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f11453d = 4096;

    public d(f fVar) {
        this.f11451b = r.c(fVar);
    }

    public final int a(int i8) {
        int i9;
        int i10 = 0;
        if (i8 > 0) {
            int length = this.f11454e.length;
            while (true) {
                length--;
                i9 = this.f11455f;
                if (length < i9 || i8 <= 0) {
                    break;
                }
                int i11 = this.f11454e[length].f11449c;
                i8 -= i11;
                this.f11457h -= i11;
                this.f11456g--;
                i10++;
            }
            c[] cVarArr = this.f11454e;
            System.arraycopy(cVarArr, i9 + 1, cVarArr, i9 + 1 + i10, this.f11456g);
            this.f11455f += i10;
        }
        return i10;
    }

    public final m b(int i8) throws IOException {
        if (i8 >= 0) {
            c[] cVarArr = e.f11458a;
            if (i8 <= cVarArr.length - 1) {
                return cVarArr[i8].f11447a;
            }
        }
        int length = this.f11455f + 1 + (i8 - e.f11458a.length);
        if (length >= 0) {
            c[] cVarArr2 = this.f11454e;
            if (length < cVarArr2.length) {
                return cVarArr2[length].f11447a;
            }
        }
        throw new IOException("Header index too large " + (i8 + 1));
    }

    public final void c(c cVar) {
        this.f11450a.add(cVar);
        int i8 = this.f11453d;
        int i9 = cVar.f11449c;
        if (i9 > i8) {
            Arrays.fill(this.f11454e, (Object) null);
            this.f11455f = this.f11454e.length - 1;
            this.f11456g = 0;
            this.f11457h = 0;
            return;
        }
        a((this.f11457h + i9) - i8);
        int i10 = this.f11456g + 1;
        c[] cVarArr = this.f11454e;
        if (i10 > cVarArr.length) {
            c[] cVarArr2 = new c[cVarArr.length * 2];
            System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
            this.f11455f = this.f11454e.length - 1;
            this.f11454e = cVarArr2;
        }
        int i11 = this.f11455f;
        this.f11455f = i11 - 1;
        this.f11454e[i11] = cVar;
        this.f11456g++;
        this.f11457h += i9;
    }

    public final m d() throws EOFException {
        x xVar = this.f11451b;
        byte b8 = xVar.readByte();
        int i8 = b8 & 255;
        boolean z7 = (b8 & 128) == 128;
        int iE = e(i8, 127);
        if (!z7) {
            return xVar.d(iE);
        }
        j jVar = j.f11475d;
        long j8 = iE;
        xVar.U(j8);
        byte[] bArrF0 = xVar.f6095H.f0(j8);
        jVar.getClass();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        b bVar = jVar.f11476a;
        b bVar2 = bVar;
        int i9 = 0;
        int i10 = 0;
        for (byte b9 : bArrF0) {
            i9 = (i9 << 8) | (b9 & 255);
            i10 += 8;
            while (i10 >= 8) {
                bVar2 = ((b[]) bVar2.f6995d)[(i9 >>> (i10 - 8)) & 255];
                if (((b[]) bVar2.f6995d) == null) {
                    byteArrayOutputStream.write(bVar2.f6993b);
                    i10 -= bVar2.f6994c;
                    bVar2 = bVar;
                } else {
                    i10 -= 8;
                }
            }
        }
        while (i10 > 0) {
            b bVar3 = ((b[]) bVar2.f6995d)[(i9 << (8 - i10)) & 255];
            if (((b[]) bVar3.f6995d) != null || bVar3.f6994c > i10) {
                break;
            }
            byteArrayOutputStream.write(bVar3.f6993b);
            i10 -= bVar3.f6994c;
            bVar2 = bVar;
        }
        return m.g(byteArrayOutputStream.toByteArray());
    }

    public final int e(int i8, int i9) throws EOFException {
        int i10 = i8 & i9;
        if (i10 < i9) {
            return i10;
        }
        int i11 = 0;
        while (true) {
            byte b8 = this.f11451b.readByte();
            int i12 = b8 & 255;
            if ((b8 & 128) == 0) {
                return i9 + (i12 << i11);
            }
            i9 += (b8 & 127) << i11;
            i11 += 7;
        }
    }
}

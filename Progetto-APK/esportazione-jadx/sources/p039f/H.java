package p039f;

import A0.O;
import J.c;
import T6.a;
import T6.e;
import V6.b;
import Y.d0;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.C1093bD;
import com.google.android.gms.internal.ads.C2040te;
import com.google.android.gms.internal.ads.C2218x;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.InterfaceC2092ue;
import com.google.android.gms.internal.ads.InterfaceC2144ve;
import com.google.android.gms.internal.ads.K4;
import com.google.android.gms.internal.ads.OD;
import com.google.android.gms.internal.ads.PD;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.Rp;
import com.google.android.gms.internal.pal.AbstractC2864y4;
import com.google.android.gms.internal.pal.R3;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicInteger;
import javax.crypto.AEADBadTagException;
import p000a.r;
import p083k3.l;
import p090l3.C3099q;
import p113o3.L;

/* JADX INFO: loaded from: classes.dex */
public abstract class H {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f24905a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f24906b;

    public H(Rp rp, L l4) {
        this.f24906b = rp;
        this.f24905a = l4;
    }

    public final void a(int i8, double[] dArr) {
        double[] dArr2;
        a aVar = (a) this.f24905a;
        if (!(aVar instanceof e) || (dArr2 = (double[]) ((e) aVar).f6619M.get(Integer.valueOf(i8))) == null) {
            return;
        }
        if (!((b) this.f24906b).f(i8)) {
            double d6 = dArr2[0];
            dArr[0] = d6;
            ((b) this.f24906b).k(i8, d6);
        }
        if (!((b) this.f24906b).d(i8)) {
            double d8 = dArr2[1];
            dArr[1] = d8;
            ((b) this.f24906b).j(i8, d8);
        }
        if (!((b) this.f24906b).g(i8)) {
            double d9 = dArr2[2];
            dArr[2] = d9;
            ((b) this.f24906b).m(i8, d9);
        }
        if (((b) this.f24906b).e(i8)) {
            return;
        }
        double d10 = dArr2[3];
        dArr[3] = d10;
        ((b) this.f24906b).l(i8, d10);
    }

    public final void b() {
        Object obj = this.f24905a;
        if (((BroadcastReceiver) obj) != null) {
            try {
                ((K) this.f24906b).f24942Q.unregisterReceiver((BroadcastReceiver) obj);
            } catch (IllegalArgumentException unused) {
            }
            this.f24905a = null;
        }
    }

    public final void c() {
        d0 d0Var = (d0) this.f24905a;
        c cVar = (c) this.f24906b;
        HashSet hashSet = d0Var.f7865e;
        if (hashSet.remove(cVar) && hashSet.isEmpty()) {
            d0Var.b();
        }
    }

    public abstract IntentFilter d();

    public abstract int e();

    public final double[] f(int i8) {
        Object obj = this.f24906b;
        return new double[]{((b) obj).f7202d0[i8], ((b) obj).f7203e0[i8], ((b) obj).f7204f0[i8], ((b) obj).f7205g0[i8]};
    }

    public final boolean g() {
        int iF = O.f(((d0) this.f24905a).f7863c.f7963m0);
        int i8 = ((d0) this.f24905a).f7861a;
        return iF == i8 || !(iF == 2 || i8 == 2);
    }

    public abstract void h();

    public abstract String i();

    public final void j() {
        b();
        IntentFilter intentFilterD = d();
        if (intentFilterD.countActions() == 0) {
            return;
        }
        if (((BroadcastReceiver) this.f24905a) == null) {
            this.f24905a = new G(this, 0);
        }
        ((K) this.f24906b).f24942Q.registerReceiver((BroadcastReceiver) this.f24905a, intentFilterD);
    }

    public abstract OD k(int i8, byte[] bArr);

    public abstract R3 l(int i8, byte[] bArr);

    public final void m(ByteBuffer byteBuffer, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (byteBuffer.remaining() < bArr2.length + 16) {
            throw new IllegalArgumentException("Given ByteBuffer output is too small");
        }
        int iPosition = byteBuffer.position();
        PD pd = (PD) this.f24905a;
        pd.getClass();
        if (byteBuffer.remaining() < bArr2.length) {
            throw new IllegalArgumentException("Given ByteBuffer output is too small");
        }
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr2);
        if (bArr.length != pd.a()) {
            throw new GeneralSecurityException("The nonce length (in bytes) must be " + pd.a());
        }
        int iRemaining = byteBufferWrap.remaining();
        int i8 = iRemaining / 64;
        int i9 = i8 + 1;
        byte b8 = 0;
        for (int i10 = 0; i10 < i9; i10++) {
            ByteBuffer byteBufferC = pd.c(pd.f15350c + i10, bArr);
            if (i10 == i8) {
                AbstractC2864y4.u(byteBuffer, byteBufferWrap, byteBufferC, iRemaining % 64);
            } else {
                AbstractC2864y4.u(byteBuffer, byteBufferWrap, byteBufferC, 64);
            }
        }
        byteBuffer.position(iPosition);
        byteBuffer.limit(byteBuffer.limit() - 16);
        byte[] bArr4 = new byte[32];
        ((PD) this.f24906b).c(0, bArr).get(bArr4);
        int iRemaining2 = byteBuffer.remaining();
        int i11 = iRemaining2 % 16;
        int i12 = i11 == 0 ? iRemaining2 : (iRemaining2 + 16) - i11;
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(i12 + 16).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.put(bArr3);
        byteBufferOrder.position(0);
        byteBufferOrder.put(byteBuffer);
        byteBufferOrder.position(i12);
        byteBufferOrder.putLong(0L);
        byteBufferOrder.putLong(iRemaining2);
        byte[] bArrArray = byteBufferOrder.array();
        long jS = AbstractC2864y4.S(0, bArr4) & 67108863;
        long jS2 = (AbstractC2864y4.S(3, bArr4) >> 2) & 67108611;
        long jS3 = (AbstractC2864y4.S(6, bArr4) >> 4) & 67092735;
        long jS4 = (AbstractC2864y4.S(9, bArr4) >> 6) & 66076671;
        long jS5 = (AbstractC2864y4.S(12, bArr4) >> 8) & 1048575;
        long j8 = jS2 * 5;
        long j9 = jS3 * 5;
        long j10 = jS4 * 5;
        long j11 = jS5 * 5;
        int i13 = 17;
        byte[] bArr5 = new byte[17];
        int i14 = 0;
        long j12 = 0;
        long j13 = 0;
        long j14 = 0;
        long j15 = 0;
        long j16 = 0;
        while (true) {
            int length = bArrArray.length;
            if (i14 >= length) {
                long j17 = j12 + (j13 >> 26);
                long j18 = j17 & 67108863;
                long j19 = j14 + (j17 >> 26);
                long j20 = j19 & 67108863;
                long j21 = j15 + (j19 >> 26);
                long j22 = j21 & 67108863;
                long j23 = ((j21 >> 26) * 5) + j16;
                long j24 = j23 & 67108863;
                long j25 = (j13 & 67108863) + (j23 >> 26);
                long j26 = j24 + 5;
                long j27 = j25 + (j26 >> 26);
                long j28 = j18 + (j27 >> 26);
                long j29 = j20 + (j28 >> 26);
                long j30 = (j22 + (j29 >> 26)) - 67108864;
                long j31 = j30 >> 63;
                long j32 = ~j31;
                long j33 = (j25 & j31) | (j27 & 67108863 & j32);
                long j34 = (j18 & j31) | (j28 & 67108863 & j32);
                long j35 = (j20 & j31) | (j29 & 67108863 & j32);
                long jS6 = AbstractC2864y4.S(16, bArr4) + (((j26 & 67108863 & j32) | (j24 & j31) | (j33 << 26)) & 4294967295L);
                long jS7 = AbstractC2864y4.S(20, bArr4) + (((j33 >> 6) | (j34 << 20)) & 4294967295L) + (jS6 >> 32);
                long jS8 = AbstractC2864y4.S(24, bArr4) + (((j34 >> 12) | (j35 << 14)) & 4294967295L) + (jS7 >> 32);
                long jS9 = AbstractC2864y4.S(28, bArr4);
                byte[] bArr6 = new byte[16];
                AbstractC2864y4.c0(0, jS6 & 4294967295L, bArr6);
                AbstractC2864y4.c0(4, jS7 & 4294967295L, bArr6);
                AbstractC2864y4.c0(8, jS8 & 4294967295L, bArr6);
                AbstractC2864y4.c0(12, ((((((j30 & j32) | (j31 & j22)) << 8) | (j35 >> 18)) & 4294967295L) + jS9 + (jS8 >> 32)) & 4294967295L, bArr6);
                byteBuffer.limit(byteBuffer.limit() + 16);
                byteBuffer.put(bArr6);
                return;
            }
            int iMin = Math.min(16, length - i14);
            System.arraycopy(bArrArray, i14, bArr5, b8, iMin);
            bArr5[iMin] = 1;
            if (iMin != 16) {
                Arrays.fill(bArr5, iMin + 1, i13, b8);
            }
            long jS10 = j16 + (AbstractC2864y4.S(b8, bArr5) & 67108863);
            long jS11 = j13 + ((AbstractC2864y4.S(3, bArr5) >> 2) & 67108863);
            long jS12 = j12 + ((AbstractC2864y4.S(6, bArr5) >> 4) & 67108863);
            long jS13 = j14 + ((AbstractC2864y4.S(9, bArr5) >> 6) & 67108863);
            long jS14 = j15 + (((AbstractC2864y4.S(12, bArr5) >> 8) & 67108863) | ((long) (bArr5[16] << 24)));
            long j36 = (jS14 * j8) + (jS13 * j9) + (jS12 * j10) + (jS11 * j11) + (jS10 * jS);
            long j37 = (jS14 * j9) + (jS13 * j10) + (jS12 * j11) + (jS11 * jS) + (jS10 * jS2) + (j36 >> 26);
            long j38 = (jS14 * j10) + (jS13 * j11) + (jS12 * jS) + (jS11 * jS2) + (jS10 * jS3) + (j37 >> 26);
            long j39 = (jS14 * j11) + (jS13 * jS) + (jS12 * jS2) + (jS11 * jS3) + (jS10 * jS4) + (j38 >> 26);
            long j40 = jS14 * jS;
            long j41 = j40 + (jS13 * jS2) + (jS12 * jS3) + (jS11 * jS4) + (jS10 * jS5) + (j39 >> 26);
            long j42 = ((j41 >> 26) * 5) + (j36 & 67108863);
            j16 = j42 & 67108863;
            j13 = (j37 & 67108863) + (j42 >> 26);
            i14 += 16;
            j15 = j41 & 67108863;
            j14 = j39 & 67108863;
            j12 = j38 & 67108863;
            i13 = 17;
            b8 = 0;
        }
    }

    public final byte[] n(ByteBuffer byteBuffer, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (byteBuffer.remaining() < 16) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        int iPosition = byteBuffer.position();
        byte[] bArr3 = new byte[16];
        byteBuffer.position(byteBuffer.limit() - 16);
        byteBuffer.get(bArr3);
        byteBuffer.position(iPosition);
        byteBuffer.limit(byteBuffer.limit() - 16);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        try {
            byte[] bArr4 = new byte[32];
            ((PD) this.f24906b).c(0, bArr).get(bArr4);
            int length = bArr2.length;
            int i8 = length & 15;
            int i9 = i8 == 0 ? length : (length + 16) - i8;
            int iRemaining = byteBuffer.remaining();
            int i10 = iRemaining % 16;
            int i11 = (i10 == 0 ? iRemaining : (iRemaining + 16) - i10) + i9;
            ByteBuffer byteBufferOrder = ByteBuffer.allocate(i11 + 16).order(ByteOrder.LITTLE_ENDIAN);
            byteBufferOrder.put(bArr2);
            byteBufferOrder.position(i9);
            byteBufferOrder.put(byteBuffer);
            byteBufferOrder.position(i11);
            byteBufferOrder.putLong(length);
            byteBufferOrder.putLong(iRemaining);
            if (!MessageDigest.isEqual(Cw.k0(bArr4, byteBufferOrder.array()), bArr3)) {
                throw new GeneralSecurityException("invalid MAC");
            }
            byteBuffer.position(iPosition);
            PD pd = (PD) this.f24905a;
            pd.getClass();
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBuffer.remaining());
            if (bArr.length != pd.a()) {
                throw new GeneralSecurityException(r.f("The nonce length (in bytes) must be ", pd.a()));
            }
            int iRemaining2 = byteBuffer.remaining();
            int i12 = iRemaining2 / 64;
            for (int i13 = 0; i13 < i12 + 1; i13++) {
                ByteBuffer byteBufferC = pd.c(pd.f15350c + i13, bArr);
                if (i13 == i12) {
                    Cw.c0(byteBufferAllocate, byteBuffer, byteBufferC, iRemaining2 % 64);
                } else {
                    Cw.c0(byteBufferAllocate, byteBuffer, byteBufferC, 64);
                }
            }
            return byteBufferAllocate.array();
        } catch (GeneralSecurityException e8) {
            throw new AEADBadTagException(e8.toString());
        }
    }

    public final int o() {
        return ((AtomicInteger) this.f24906b).get();
    }

    public final void p() {
        ((C2040te) this.f24905a).c(new Exception());
    }

    public final void q(String str, Throwable th) {
        ((C2040te) this.f24905a).c(th);
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15785a7)).booleanValue()) {
            l.f25980A.f25987g.h(str, th);
        }
    }

    public final void r(InterfaceC2144ve interfaceC2144ve, InterfaceC2092ue interfaceC2092ue) {
        Cw.h2((C2040te) this.f24905a, new C2218x(interfaceC2144ve, interfaceC2092ue, 16), AbstractC1988se.f20911f);
    }

    public H(byte[] bArr, int i8) throws GeneralSecurityException {
        if (i8 != 5) {
            if (!Cw.f0(1)) {
                throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
            }
            this.f24905a = k(1, bArr);
            this.f24906b = k(0, bArr);
            return;
        }
        if (!AbstractC2864y4.y(1)) {
            throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
        }
        this.f24905a = l(1, bArr);
        this.f24906b = l(0, bArr);
    }

    public H() {
        this.f24905a = new C2040te();
        this.f24906b = new AtomicInteger(0);
        Cw.h2((C2040te) this.f24905a, new K4(this, 26), AbstractC1988se.f20911f);
    }

    public H(a aVar) {
        this.f24905a = aVar;
        if (aVar instanceof e) {
            this.f24906b = ((e) aVar).f6614H;
        }
    }

    public H(p176w5.a aVar) {
        this.f24905a = aVar;
        this.f24906b = new C1093bD(aVar);
    }

    public H(d0 d0Var, c cVar) {
        this.f24905a = d0Var;
        this.f24906b = cVar;
    }

    public H(K k8) {
        this.f24906b = k8;
    }
}

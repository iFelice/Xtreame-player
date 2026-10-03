package com.google.android.gms.internal.ads;

import android.provider.Settings;
import android.util.Base64;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.d5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1188d5 extends AbstractCallableC2016t5 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f18296h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1188d5(V4 v5, V3 v7, int i8, int i9) {
        super(v5, "HKR8yJb1bSJu8LVlqpKC/lk4sWm3Ji10GkyhxRQoJd2Yb8vz2/7ATJhGRkBQpjA8", "3Dv+WIEpWKEbBzcuP3SgLUV0aXQTnDSdpPKu/RzIzoY=", v7, i8, 89);
        this.f18296h = i9;
        switch (i9) {
            case 1:
                super(v5, "yunpg/6VdKt9qYWjYKs5tjKMiKriIKdWWgRCb/dxRRCrip4tXKwty8n3U/lUpwOV", "nCcHhBJ+r5jDr0ERNbOfBIJ/pDQFZIqvHaO2vAiQNRE=", v7, i8, 49);
                break;
            case 2:
                super(v5, "c/axzSlC5CKyeVvYpod083FD/YK+zLXfDqtD5AYe9EXr6xyYayRD+veafiAlev8F", "JFMtS6Z9bzmnMwoeWTxjTTnvJVVZDuewSTBrvx9CdBc=", v7, i8, 5);
                break;
            case 3:
                super(v5, "bxhlS+byKsEaHbhXEyi6TD/EqtsG2sd2GfInhSI7yciYukoqPk/w1i7LSDrcmmYr", "gWtAtoadyS/0GQFYvFINsjkt4bRjT5fE+w3tC36yAJU=", v7, i8, 24);
                break;
            case 4:
                super(v5, "QkUPtkYUgz2Q7QzT++W7/LvSL/+jztV0vuOJ6F0a3TCpRf9UbWz3aw54p4TaC7dW", "AjndXp1s5xIDXysf7TNVubDac7r00lcAtHKozpGmJzQ=", v7, i8, 76);
                break;
            case 5:
                super(v5, "lVUtMgOC8oCk0OL1R8+dcIzJX9C75UT4Pn6J82++vFrHU4GwQD+682Yf0fGqttpS", "RRAtLSPp4UfCvUq8TqKgqVcK2MQ98P/X8fWWJOdf6yU=", v7, i8, 12);
                break;
            case 6:
                super(v5, "pkxrOWj7zD1ScyeXlo8fp1m52MhBIE9QvURtfE4hxB81XVp6EbBK8CYQjvvhYlf1", "OfZFeGMpPN4nP2QoVlOsW4kmNx194lMXDh8YPc+yAeg=", v7, i8, 3);
                break;
            case 7:
                super(v5, "JZBFNEdYFhTFBTCRgtU3dDnkdlKXmKLHUW9VyRRgLZX35JOvzKEIQuHunyCpcG/w", "nv6PiabX0G4RLHtriKodA9C0rOBToujvB9ySFMp3wxE=", v7, i8, 73);
                break;
            case 8:
                super(v5, "0kr13TIqRr0Mkim2K4wTtB+PeWlqdIn0V95/3g6ojAuM6jvjN6OT9QeeEcwm9v6h", "pwlWlXowmv5MgDBY81mya6zXLrSMULDo97qGgXQvfFI=", v7, i8, 51);
                break;
            case 9:
                super(v5, "19nlSd1PMyXKl1niHXaxZmvGyLnyitkJHQnkLHtPHLj6n1sor4NdBFlTmnlba7BL", "8mLoio5zXFzLNZDTURhMAugjCGrSPBhh3GCaf2t8mPk=", v7, i8, 48);
                break;
            default:
                break;
        }
    }

    private final void c() {
        String str = (String) this.f21036e.invoke(null, new Object[0]);
        synchronized (this.f21035d) {
            V3 v5 = this.f21035d;
            v5.d();
            C1496j4.f0((C1496j4) v5.f20255H, str);
        }
    }

    private final void d() {
        V3 v5 = this.f21035d;
        v5.d();
        C1496j4.C0((C1496j4) v5.f20255H, -1L);
        V3 v7 = this.f21035d;
        v7.d();
        C1496j4.D0((C1496j4) v7.f20255H, -1L);
        int[] iArr = (int[]) this.f21036e.invoke(null, this.f21032a.f16939a);
        synchronized (this.f21035d) {
            try {
                V3 v8 = this.f21035d;
                long j8 = iArr[0];
                v8.d();
                C1496j4.C0((C1496j4) v8.f20255H, j8);
                V3 v9 = this.f21035d;
                long j9 = iArr[1];
                v9.d();
                C1496j4.D0((C1496j4) v9.f20255H, j9);
                int i8 = iArr[2];
                if (i8 != Integer.MIN_VALUE) {
                    V3 v10 = this.f21035d;
                    v10.d();
                    C1496j4.U((C1496j4) v10.f20255H, i8);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void e() {
        if (this.f21032a.f16951m) {
            h();
            return;
        }
        synchronized (this.f21035d) {
            V3 v5 = this.f21035d;
            String str = (String) this.f21036e.invoke(null, this.f21032a.f16939a);
            v5.d();
            C1496j4.g0((C1496j4) v5.f20255H, str);
        }
    }

    private final void f() {
        Boolean bool = (Boolean) C3099q.f26624d.f26627c.a(Q7.f15576A2);
        bool.getClass();
        String str = (String) this.f21036e.invoke(null, this.f21032a.f16939a, bool);
        N4 n7 = new N4();
        n7.f14878a = -1L;
        n7.f14879b = -1L;
        HashMap mapA = AbstractC2067u4.a(str);
        if (mapA != null) {
            n7.f14878a = ((Long) mapA.get(0)).longValue();
            n7.f14879b = ((Long) mapA.get(1)).longValue();
        }
        synchronized (this.f21035d) {
            V3 v5 = this.f21035d;
            long j8 = n7.f14878a;
            v5.d();
            C1496j4.B0((C1496j4) v5.f20255H, j8);
            V3 v7 = this.f21035d;
            long j9 = n7.f14879b;
            v7.d();
            C1496j4.V((C1496j4) v7.f20255H, j9);
        }
    }

    private final void g() {
        synchronized (this.f21035d) {
            String str = (String) this.f21036e.invoke(null, new Object[0]);
            S4 s7 = new S4();
            HashMap mapA = AbstractC2067u4.a(str);
            if (mapA != null) {
                s7.f16404a = (Long) mapA.get(0);
                s7.f16405b = (Long) mapA.get(1);
            }
            V3 v5 = this.f21035d;
            long jLongValue = s7.f16404a.longValue();
            v5.d();
            C1496j4.N((C1496j4) v5.f20255H, jLongValue);
            V3 v7 = this.f21035d;
            long jLongValue2 = s7.f16405b.longValue();
            v7.d();
            C1496j4.O((C1496j4) v7.f20255H, jLongValue2);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC2016t5
    public final void a() throws InvocationTargetException {
        int i8 = 1;
        switch (this.f18296h) {
            case 0:
                c();
                return;
            case 1:
                V3 v5 = this.f21035d;
                v5.d();
                C1496j4.o0((C1496j4) v5.f20255H, 3);
                try {
                    if (true == ((Boolean) this.f21036e.invoke(null, this.f21032a.f16939a)).booleanValue()) {
                        i8 = 2;
                    }
                    v5.d();
                    C1496j4.o0((C1496j4) v5.f20255H, i8);
                    return;
                } catch (InvocationTargetException e8) {
                    if (!(e8.getTargetException() instanceof Settings.SettingNotFoundException)) {
                        throw e8;
                    }
                    return;
                }
            case 2:
                d();
                return;
            case 3:
                e();
                return;
            case 4:
                i8 = true == ((Boolean) this.f21036e.invoke(null, this.f21032a.f16939a)).booleanValue() ? 2 : 1;
                V3 v7 = this.f21035d;
                v7.d();
                C1496j4.r0((C1496j4) v7.f20255H, i8);
                return;
            case 5:
                V3 v8 = this.f21035d;
                v8.d();
                C1496j4.F0((C1496j4) v8.f20255H, -1L);
                long jLongValue = ((Long) this.f21036e.invoke(null, this.f21032a.f16939a)).longValue();
                v8.d();
                C1496j4.F0((C1496j4) v8.f20255H, jLongValue);
                return;
            case 6:
                f();
                return;
            case 7:
                V3 v9 = this.f21035d;
                try {
                    if (true == ((Boolean) this.f21036e.invoke(null, this.f21032a.f16939a)).booleanValue()) {
                        i8 = 2;
                    }
                    v9.d();
                    C1496j4.q0((C1496j4) v9.f20255H, i8);
                    return;
                } catch (InvocationTargetException unused) {
                    v9.d();
                    C1496j4.q0((C1496j4) v9.f20255H, 3);
                    return;
                }
            case 8:
                g();
                return;
            default:
                V3 v10 = this.f21035d;
                v10.d();
                C1496j4.n0((C1496j4) v10.f20255H, 3);
                boolean zBooleanValue = ((Boolean) this.f21036e.invoke(null, this.f21032a.f16939a)).booleanValue();
                synchronized (this.f21035d) {
                    try {
                        if (zBooleanValue) {
                            V3 v11 = this.f21035d;
                            v11.d();
                            C1496j4.n0((C1496j4) v11.f20255H, 2);
                        } else {
                            V3 v12 = this.f21035d;
                            v12.d();
                            C1496j4.n0((C1496j4) v12.f20255H, 1);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC2016t5
    public final void b() {
        switch (this.f18296h) {
            case 3:
                V4 v5 = this.f21032a;
                if (v5.f16954p) {
                    super.b();
                } else if (v5.f16951m) {
                    h();
                }
                break;
            default:
                super.b();
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC2016t5, java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        switch (this.f18296h) {
            case 3:
                b();
                break;
            default:
                b();
                break;
        }
        return null;
    }

    public final void h() {
        Future future;
        V4 v5 = this.f21032a;
        p075j3.b bVar = null;
        if (v5.f16945g) {
            if (v5.f16944f == null && (future = v5.f16946h) != null) {
                try {
                    future.get(2000L, TimeUnit.MILLISECONDS);
                    v5.f16946h = null;
                } catch (InterruptedException | ExecutionException unused) {
                } catch (TimeoutException unused2) {
                    v5.f16946h.cancel(true);
                }
            }
            bVar = v5.f16944f;
        }
        if (bVar == null) {
            return;
        }
        try {
            p075j3.a aVarF = bVar.f();
            String strEncodeToString = aVarF.f25695a;
            char[] cArr = X4.f17380a;
            if (strEncodeToString != null && strEncodeToString.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
                UUID uuidFromString = UUID.fromString(strEncodeToString);
                byte[] bArr = new byte[16];
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
                byteBufferWrap.putLong(uuidFromString.getMostSignificantBits());
                byteBufferWrap.putLong(uuidFromString.getLeastSignificantBits());
                strEncodeToString = Base64.encodeToString(bArr, 11);
            }
            if (strEncodeToString != null) {
                synchronized (this.f21035d) {
                    V3 v7 = this.f21035d;
                    v7.d();
                    C1496j4.g0((C1496j4) v7.f20255H, strEncodeToString);
                    V3 v8 = this.f21035d;
                    boolean z7 = aVarF.f25696b;
                    v8.d();
                    C1496j4.h0((C1496j4) v8.f20255H, z7);
                    V3 v9 = this.f21035d;
                    v9.d();
                    C1496j4.t0((C1496j4) v9.f20255H);
                }
            }
        } catch (IOException unused3) {
        }
    }
}
